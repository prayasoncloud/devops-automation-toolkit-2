 
import boto3
from datetime import datetime, timedelta, UTC

ec2_client = boto3.client("ec2")

cw_client = boto3.client("cloudwatch")

cw_paginator = cw_client.get_paginator("get_metric_data")


ec2_paginator = ec2_client.get_paginator("describe_instances")

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
            "Id": f"cpu{iid}",
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
print(f"instance {data["Id"] is overresourced}")

for data in response["MetricDataResults"]:
    if data["Values"] <= 10:
  
