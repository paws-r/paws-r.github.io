<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the scaling policies in the account and Region

### Description

Gets information about the scaling policies in the account and Region.

### Usage

    autoscaling_describe_policies(AutoScalingGroupName, PolicyNames,
      PolicyTypes, NextToken, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_policies_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_policies_:_PolicyNames">PolicyNames</code></td>
<td><p>The names of one or more policies. If you omit this property, all
policies are described. If a group name is provided, the results are
limited to that group. If you specify an unknown policy name, it is
ignored with no error.</p>
<p>Array Members: Maximum number of 50 items.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_policies_:_PolicyTypes">PolicyTypes</code></td>
<td><p>One or more policy types. The valid values are
<code>SimpleScaling</code>, <code>StepScaling</code>,
<code>TargetTrackingScaling</code>, and
<code>PredictiveScaling</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_policies_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_policies_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to be returned with each call. The
default value is <code>50</code> and the maximum value is
<code>100</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScalingPolicies = list(
        list(
          AutoScalingGroupName = "string",
          PolicyName = "string",
          PolicyARN = "string",
          PolicyType = "string",
          AdjustmentType = "string",
          MinAdjustmentStep = 123,
          MinAdjustmentMagnitude = 123,
          ScalingAdjustment = 123,
          Cooldown = 123,
          StepAdjustments = list(
            list(
              MetricIntervalLowerBound = 123.0,
              MetricIntervalUpperBound = 123.0,
              ScalingAdjustment = 123
            )
          ),
          MetricAggregationType = "string",
          EstimatedInstanceWarmup = 123,
          Alarms = list(
            list(
              AlarmName = "string",
              AlarmARN = "string"
            )
          ),
          TargetTrackingConfiguration = list(
            PredefinedMetricSpecification = list(
              PredefinedMetricType = "ASGAverageCPUUtilization"|"ASGAverageNetworkIn"|"ASGAverageNetworkOut"|"ALBRequestCountPerTarget",
              ResourceLabel = "string"
            ),
            CustomizedMetricSpecification = list(
              MetricName = "string",
              Namespace = "string",
              Dimensions = list(
                list(
                  Name = "string",
                  Value = "string"
                )
              ),
              Statistic = "Average"|"Minimum"|"Maximum"|"SampleCount"|"Sum",
              Unit = "string",
              Metrics = list(
                list(
                  Id = "string",
                  Expression = "string",
                  MetricStat = list(
                    Metric = list(
                      Namespace = "string",
                      MetricName = "string",
                      Dimensions = list(
                        list(
                          Name = "string",
                          Value = "string"
                        )
                      )
                    ),
                    Stat = "string",
                    Unit = "string"
                  ),
                  Label = "string",
                  ReturnData = TRUE|FALSE
                )
              )
            ),
            TargetValue = 123.0,
            DisableScaleIn = TRUE|FALSE
          ),
          Enabled = TRUE|FALSE,
          PredictiveScalingConfiguration = list(
            MetricSpecifications = list(
              list(
                TargetValue = 123.0,
                PredefinedMetricPairSpecification = list(
                  PredefinedMetricType = "ASGCPUUtilization"|"ASGNetworkIn"|"ASGNetworkOut"|"ALBRequestCount",
                  ResourceLabel = "string"
                ),
                PredefinedScalingMetricSpecification = list(
                  PredefinedMetricType = "ASGAverageCPUUtilization"|"ASGAverageNetworkIn"|"ASGAverageNetworkOut"|"ALBRequestCountPerTarget",
                  ResourceLabel = "string"
                ),
                PredefinedLoadMetricSpecification = list(
                  PredefinedMetricType = "ASGTotalCPUUtilization"|"ASGTotalNetworkIn"|"ASGTotalNetworkOut"|"ALBTargetGroupRequestCount",
                  ResourceLabel = "string"
                ),
                CustomizedScalingMetricSpecification = list(
                  MetricDataQueries = list(
                    list(
                      Id = "string",
                      Expression = "string",
                      MetricStat = list(
                        Metric = list(
                          Namespace = "string",
                          MetricName = "string",
                          Dimensions = list(
                            list(
                              Name = "string",
                              Value = "string"
                            )
                          )
                        ),
                        Stat = "string",
                        Unit = "string"
                      ),
                      Label = "string",
                      ReturnData = TRUE|FALSE
                    )
                  )
                ),
                CustomizedLoadMetricSpecification = list(
                  MetricDataQueries = list(
                    list(
                      Id = "string",
                      Expression = "string",
                      MetricStat = list(
                        Metric = list(
                          Namespace = "string",
                          MetricName = "string",
                          Dimensions = list(
                            list(
                              Name = "string",
                              Value = "string"
                            )
                          )
                        ),
                        Stat = "string",
                        Unit = "string"
                      ),
                      Label = "string",
                      ReturnData = TRUE|FALSE
                    )
                  )
                ),
                CustomizedCapacityMetricSpecification = list(
                  MetricDataQueries = list(
                    list(
                      Id = "string",
                      Expression = "string",
                      MetricStat = list(
                        Metric = list(
                          Namespace = "string",
                          MetricName = "string",
                          Dimensions = list(
                            list(
                              Name = "string",
                              Value = "string"
                            )
                          )
                        ),
                        Stat = "string",
                        Unit = "string"
                      ),
                      Label = "string",
                      ReturnData = TRUE|FALSE
                    )
                  )
                )
              )
            ),
            Mode = "ForecastAndScale"|"ForecastOnly",
            SchedulingBufferTime = 123,
            MaxCapacityBreachBehavior = "HonorMaxCapacity"|"IncreaseMaxCapacity",
            MaxCapacityBuffer = 123
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_policies(
      AutoScalingGroupName = "string",
      PolicyNames = list(
        "string"
      ),
      PolicyTypes = list(
        "string"
      ),
      NextToken = "string",
      MaxRecords = 123
    )

### Examples

    ## Not run: 
    # This example describes the policies for the specified Auto Scaling
    # group.
    svc$describe_policies(
      AutoScalingGroupName = "my-auto-scaling-group"
    )

    ## End(Not run)
