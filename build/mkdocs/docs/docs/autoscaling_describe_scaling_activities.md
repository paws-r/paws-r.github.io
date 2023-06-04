<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_scaling_activities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the scaling activities in the account and Region

### Description

Gets information about the scaling activities in the account and Region.

When scaling events occur, you see a record of the scaling activity in
the scaling activities. For more information, see [Verifying a scaling
activity for an Auto Scaling
group](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html)
in the *Amazon EC2 Auto Scaling User Guide*.

If the scaling event succeeds, the value of the `StatusCode` element in
the response is `Successful`. If an attempt to launch instances failed,
the `StatusCode` value is `Failed` or `Cancelled` and the
`StatusMessage` element in the response indicates the cause of the
failure. For help interpreting the `StatusMessage`, see [Troubleshooting
Amazon EC2 Auto
Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/CHAP_Troubleshooting.html)
in the *Amazon EC2 Auto Scaling User Guide*.

### Usage

    autoscaling_describe_scaling_activities(ActivityIds,
      AutoScalingGroupName, IncludeDeletedGroups, MaxRecords, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_scaling_activities_:_ActivityIds">ActivityIds</code></td>
<td><p>The activity IDs of the desired scaling activities. If you omit
this property, all activities for the past six weeks are described. If
unknown activities are requested, they are ignored with no error. If you
specify an Auto Scaling group, the results are limited to that
group.</p>
<p>Array Members: Maximum number of 50 IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_scaling_activities_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>The name of the Auto Scaling group.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_scaling_activities_:_IncludeDeletedGroups">IncludeDeletedGroups</code></td>
<td><p>Indicates whether to include scaling activity from deleted Auto
Scaling groups.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_scaling_activities_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to return with this call. The default
value is <code>100</code> and the maximum value is
<code>100</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_scaling_activities_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Activities = list(
        list(
          ActivityId = "string",
          AutoScalingGroupName = "string",
          Description = "string",
          Cause = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          StatusCode = "PendingSpotBidPlacement"|"WaitingForSpotInstanceRequestId"|"WaitingForSpotInstanceId"|"WaitingForInstanceId"|"PreInService"|"InProgress"|"WaitingForELBConnectionDraining"|"MidLifecycleAction"|"WaitingForInstanceWarmup"|"Successful"|"Failed"|"Cancelled"|"WaitingForConnectionDraining",
          StatusMessage = "string",
          Progress = 123,
          Details = "string",
          AutoScalingGroupState = "string",
          AutoScalingGroupARN = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_scaling_activities(
      ActivityIds = list(
        "string"
      ),
      AutoScalingGroupName = "string",
      IncludeDeletedGroups = TRUE|FALSE,
      MaxRecords = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # This example describes the scaling activities for the specified Auto
    # Scaling group.
    svc$describe_scaling_activities(
      AutoScalingGroupName = "my-auto-scaling-group"
    )

    ## End(Not run)
