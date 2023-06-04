<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscalingplans_create_scaling_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a scaling plan

### Description

Creates a scaling plan.

### Usage

    autoscalingplans_create_scaling_plan(ScalingPlanName, ApplicationSource,
      ScalingInstructions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscalingplans_create_scaling_plan_:_ScalingPlanName">ScalingPlanName</code></td>
<td><p>[required] The name of the scaling plan. Names cannot contain
vertical bars, colons, or forward slashes.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscalingplans_create_scaling_plan_:_ApplicationSource">ApplicationSource</code></td>
<td><p>[required] A CloudFormation stack or set of tags. You can create
one scaling plan per application source.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ApplicationSource.html">ApplicationSource</a>
in the <em>AWS Auto Scaling API Reference</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscalingplans_create_scaling_plan_:_ScalingInstructions">ScalingInstructions</code></td>
<td><p>[required] The scaling instructions.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html">ScalingInstruction</a>
in the <em>AWS Auto Scaling API Reference</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScalingPlanVersion = 123
    )

### Request syntax

    svc$create_scaling_plan(
      ScalingPlanName = "string",
      ApplicationSource = list(
        CloudFormationStackARN = "string",
        TagFilters = list(
          list(
            Key = "string",
            Values = list(
              "string"
            )
          )
        )
      ),
      ScalingInstructions = list(
        list(
          ServiceNamespace = "autoscaling"|"ecs"|"ec2"|"rds"|"dynamodb",
          ResourceId = "string",
          ScalableDimension = "autoscaling:autoScalingGroup:DesiredCapacity"|"ecs:service:DesiredCount"|"ec2:spot-fleet-request:TargetCapacity"|"rds:cluster:ReadReplicaCount"|"dynamodb:table:ReadCapacityUnits"|"dynamodb:table:WriteCapacityUnits"|"dynamodb:index:ReadCapacityUnits"|"dynamodb:index:WriteCapacityUnits",
          MinCapacity = 123,
          MaxCapacity = 123,
          TargetTrackingConfigurations = list(
            list(
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
          ),
          PredefinedLoadMetricSpecification = list(
            PredefinedLoadMetricType = "ASGTotalCPUUtilization"|"ASGTotalNetworkIn"|"ASGTotalNetworkOut"|"ALBTargetGroupRequestCount",
            ResourceLabel = "string"
          ),
          CustomizedLoadMetricSpecification = list(
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
          ScheduledActionBufferTime = 123,
          PredictiveScalingMaxCapacityBehavior = "SetForecastCapacityToMaxCapacity"|"SetMaxCapacityToForecastCapacity"|"SetMaxCapacityAboveForecastCapacity",
          PredictiveScalingMaxCapacityBuffer = 123,
          PredictiveScalingMode = "ForecastAndScale"|"ForecastOnly",
          ScalingPolicyUpdateBehavior = "KeepExternalPolicies"|"ReplaceExternalPolicies",
          DisableDynamicScaling = TRUE|FALSE
        )
      )
    )
