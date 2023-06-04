<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscalingplans_describe_scaling_plans</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your scaling plans

### Description

Describes one or more of your scaling plans.

### Usage

    autoscalingplans_describe_scaling_plans(ScalingPlanNames,
      ScalingPlanVersion, ApplicationSources, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscalingplans_describe_scaling_plans_:_ScalingPlanNames">ScalingPlanNames</code></td>
<td><p>The names of the scaling plans (up to 10). If you specify
application sources, you cannot specify scaling plan names.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscalingplans_describe_scaling_plans_:_ScalingPlanVersion">ScalingPlanVersion</code></td>
<td><p>The version number of the scaling plan. Currently, the only valid
value is <code>1</code>.</p>
<p>If you specify a scaling plan version, you must also specify a
scaling plan name.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscalingplans_describe_scaling_plans_:_ApplicationSources">ApplicationSources</code></td>
<td><p>The sources for the applications (up to 10). If you specify
scaling plan names, you cannot specify application sources.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscalingplans_describe_scaling_plans_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of scalable resources to return. This value
can be between 1 and 50. The default value is 50.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscalingplans_describe_scaling_plans_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScalingPlans = list(
        list(
          ScalingPlanName = "string",
          ScalingPlanVersion = 123,
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
          ),
          StatusCode = "Active"|"ActiveWithProblems"|"CreationInProgress"|"CreationFailed"|"DeletionInProgress"|"DeletionFailed"|"UpdateInProgress"|"UpdateFailed",
          StatusMessage = "string",
          StatusStartTime = as.POSIXct(
            "2015-01-01"
          ),
          CreationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_scaling_plans(
      ScalingPlanNames = list(
        "string"
      ),
      ScalingPlanVersion = 123,
      ApplicationSources = list(
        list(
          CloudFormationStackARN = "string",
          TagFilters = list(
            list(
              Key = "string",
              Values = list(
                "string"
              )
            )
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
