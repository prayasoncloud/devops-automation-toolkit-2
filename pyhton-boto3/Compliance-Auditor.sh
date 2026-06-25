
import boto3
from datetime import datetime, timedelta, UTC
import csv

ec2_client = boto3.client("ec2")
cw_client = boto3.client("cloudwatch")

ec2_paginator = ec2_client.get_paginator("describe_instances")

# ==============================
# Over-Resourced EC2 Instances
# ==============================

instance_list = []

for page in ec2_paginator.paginate(
    Filters=[
        {
            "Name": "instance-state-name",
            "Values": ["running"]
        }
    ]
):
    for reservation in page["Reservations"]:
        for instance in reservation["Instances"]:
            instance_list.append(instance["InstanceId"])

metric_queries = []

for iid in instance_list:
    metric_queries.append(
        {
            "Id": f"cpu_{iid.replace('-', '_')}",
            "MetricStat": {
                "Metric": {
                    "Namespace": "AWS/EC2",
                    "MetricName": "CPUUtilization",
                    "Dimensions": [
                        {
                            "Name": "InstanceId",
                            "Value": iid
                        }
                    ]
                },
                "Period": 300,
                "Stat": "Average"
            },
            "ReturnData": True
        }
    )

response = cw_client.get_metric_data(
    MetricDataQueries=metric_queries,
    StartTime=datetime.now(UTC) - timedelta(days=2),
    EndTime=datetime.now(UTC)
)

over_resourced_instances = []

for data in response["MetricDataResults"]:

    if not data["Values"]:
        continue

    avg_cpu = sum(data["Values"]) / len(data["Values"])

    if avg_cpu <= 10:
        over_resourced_instances.append(
            {
                "InstanceId": data["Id"].replace("cpu_", "").replace("_", "-"),
                "AverageCPU": round(avg_cpu, 2)
            }
        )

# ==============================
# Unattached EBS Volumes
# ==============================

volume_paginator = ec2_client.get_paginator("describe_volumes")

unattached_volumes = []

for page in volume_paginator.paginate():
    for volume in page["Volumes"]:

        if volume["State"] == "available":

            unattached_volumes.append(
                {
                    "VolumeId": volume["VolumeId"],
                    "Size": volume["Size"],
                    "Type": volume["VolumeType"]
                }
            )

# ==============================
# Unused Elastic IPs
# ==============================

address_paginator = ec2_client.get_paginator("describe_addresses")

unused_eips = []

for page in address_paginator.paginate():
    for address in page["Addresses"]:

        if "AssociationId" not in address:

            unused_eips.append(
                {
                    "PublicIp": address["PublicIp"],
                    "AllocationId": address["AllocationId"]
                }
            )

with open("aws_costing_audit_report.csv", "w") as file:
    writer = csv.writer(file)

    writer.writerow([
        "ResourceType",
        "ResousrceId",
        "Details"
    ])

    for i in instance_list():
        writer.writerow([
            "EC2",
            i["InstanceId"],
            f"{i['AverageCPU']} CPU%"
        ])

    for i in unattached_volumes:
        writer.writerow([
            "EBS_Volume",
            i["VolumeId"],
            f"{i["Size"]}"
        ])

