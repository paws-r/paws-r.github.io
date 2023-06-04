<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscalingplans_describe_scaling_plan_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the scalable resources in the specified scaling plan

### Description

Describes the scalable resources in the specified scaling plan.

### Usage

    autoscalingplans_describe_scaling_plan_resources(ScalingPlanName,
      ScalingPlanVersion, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscalingplans_describe_scaling_plan_resources_:_ScalingPlanName">ScalingPlanName</code></td>
<td><p>[required] The name of the scaling plan.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscalingplans_describe_scaling_plan_resources_:_ScalingPlanVersion">ScalingPlanVersion</code></td>
<td><p>[required] The version number of the scaling plan. Currently, the
only valid value is <code>1</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscalingplans_describe_scaling_plan_resources_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of scalable resources to return. The value
must be between 1 and 50. The default value is 50.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscalingplans_describe_scaling_plan_resources_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScalingPlanResources = list(
        list(
          ScalingPlanName = "string",
          ScalingPlanVersion = 123,
          ServiceNamespace = "autoscaling"|"ecs"|"ec2"|"rds"|"dynamodb",
          ResourceId = "string",
          ScalableDimension = "autoscaling:autoScalingGroup:DesiredCapacity"|"ecs:service:DesiredCount"|"ec2:spot-fleet-request:TargetCapacity"|"rds:cluster:ReadReplicaCount"|"dynamodb:table:ReadCapacityUnits"|"dynamodb:table:WriteCapacityUnits"|"dynamodb:index:ReadCapacityUnits"|"dynamodb:index:WriteCapacityUnits",
          ScalingPolicies = list(
            list(
              PolicyName = "string",
              PolicyType = "TargetTrackingScaling",
              TargetTrackingConfiguration = list(
                PredefinedScalingMetricSpecification = list(
                  PredefinedScalingMetricType = "ASGAverageCPUUtilization"|"ASGAverageNetworkIn"|"ASGAverageNetworkOut"|"DynamoDBReadCapacityUtilization"|"DynamoDBWriteCapacityUtilization"|"ECSServiceAverageCPUUtilization"|"ECSServiceAverageMemoryUtilization"|"ALBRequestCountPerTarget"|"RDSReaderAverageCPUUtilization"|"RDSReaderAverageDatabaseConnections"|"EC2SpotFleetRequestAverageCPUUtilization"|"EC2SpotFleetRequestAverageNetworkIn"|"EC2SpotFleetRequestAverageNetworkOut",
                  ResourceLabel = "string"
                ),
                CustomizedScalingMetricSpecification = list(
                  MetricName = "string",
                  Namespace = "string",
                  Dimensions = list(
                    list(
                      Name = "string",
                      Value = "string"
                    )
                  ),
                  Statistic = "Average"|"Minimum"|"Maximum"|"SampleCount"|"Sum",
                  Unit = "string"
                ),
                TargetValue = 123.0,
                DisableScaleIn = TRUE|FALSE,
                ScaleOutCooldown = 123,
                ScaleInCooldown = 123,
                EstimatedInstanceWarmup = 123
              )
            )
          ),
          ScalingStatusCode = "Inactive"|"PartiallyActive"|"Active",
          ScalingStatusMessage = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_scaling_plan_resources(
      ScalingPlanName = "string",
      ScalingPlanVersion = 123,
      MaxResults = 123,
      NextToken = "string"
    )
