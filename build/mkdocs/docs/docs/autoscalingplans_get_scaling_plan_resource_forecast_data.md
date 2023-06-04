<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscalingplans_get_scaling_plan_resource_forecast_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the forecast data for a scalable resource

### Description

Retrieves the forecast data for a scalable resource.

Capacity forecasts are represented as predicted values, or data points,
that are calculated using historical data points from a specified
CloudWatch load metric. Data points are available for up to 56 days.

### Usage

    autoscalingplans_get_scaling_plan_resource_forecast_data(
      ScalingPlanName, ScalingPlanVersion, ServiceNamespace, ResourceId,
      ScalableDimension, ForecastDataType, StartTime, EndTime)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscalingplans_get_scaling_plan_resource_forecast_data_:_ScalingPlanName">ScalingPlanName</code></td>
<td><p>[required] The name of the scaling plan.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscalingplans_get_scaling_plan_resource_forecast_data_:_ScalingPlanVersion">ScalingPlanVersion</code></td>
<td><p>[required] The version number of the scaling plan. Currently, the
only valid value is <code>1</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscalingplans_get_scaling_plan_resource_forecast_data_:_ServiceNamespace">ServiceNamespace</code></td>
<td><p>[required] The namespace of the AWS service. The only valid value
is <code>autoscaling</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscalingplans_get_scaling_plan_resource_forecast_data_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource. This string consists of a
prefix (<code>autoScalingGroup</code>) followed by the name of a
specified Auto Scaling group (<code>my-asg</code>). Example:
<code>autoScalingGroup/my-asg</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscalingplans_get_scaling_plan_resource_forecast_data_:_ScalableDimension">ScalableDimension</code></td>
<td><p>[required] The scalable dimension for the resource. The only
valid value is
<code>autoscaling:autoScalingGroup:DesiredCapacity</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscalingplans_get_scaling_plan_resource_forecast_data_:_ForecastDataType">ForecastDataType</code></td>
<td><p>[required] The type of forecast data to get.</p>
<ul>
<li><p><code>LoadForecast</code>: The load metric forecast.</p></li>
<li><p><code>CapacityForecast</code>: The capacity forecast.</p></li>
<li><p><code>ScheduledActionMinCapacity</code>: The minimum capacity for
each scheduled scaling action. This data is calculated as the larger of
two values: the capacity forecast or the minimum capacity in the scaling
instruction.</p></li>
<li><p><code>ScheduledActionMaxCapacity</code>: The maximum capacity for
each scheduled scaling action. The calculation used is determined by the
predictive scaling maximum capacity behavior setting in the scaling
instruction.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="autoscalingplans_get_scaling_plan_resource_forecast_data_:_StartTime">StartTime</code></td>
<td><p>[required] The inclusive start time of the time range for the
forecast data to get. The date and time can be at most 56 days before
the current date and time.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscalingplans_get_scaling_plan_resource_forecast_data_:_EndTime">EndTime</code></td>
<td><p>[required] The exclusive end time of the time range for the
forecast data to get. The maximum time duration between the start and
end time is seven days.</p>
<p>Although this parameter can accept a date and time that is more than
two days in the future, the availability of forecast data has limits.
AWS Auto Scaling only issues forecasts for periods of two days in
advance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Datapoints = list(
        list(
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          Value = 123.0
        )
      )
    )

### Request syntax

    svc$get_scaling_plan_resource_forecast_data(
      ScalingPlanName = "string",
      ScalingPlanVersion = 123,
      ServiceNamespace = "autoscaling"|"ecs"|"ec2"|"rds"|"dynamodb",
      ResourceId = "string",
      ScalableDimension = "autoscaling:autoScalingGroup:DesiredCapacity"|"ecs:service:DesiredCount"|"ec2:spot-fleet-request:TargetCapacity"|"rds:cluster:ReadReplicaCount"|"dynamodb:table:ReadCapacityUnits"|"dynamodb:table:WriteCapacityUnits"|"dynamodb:index:ReadCapacityUnits"|"dynamodb:index:WriteCapacityUnits",
      ForecastDataType = "CapacityForecast"|"LoadForecast"|"ScheduledActionMinCapacity"|"ScheduledActionMaxCapacity",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      )
    )
