<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_notification_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the Amazon SNS notifications that are configured for one or more Auto Scaling groups

### Description

Gets information about the Amazon SNS notifications that are configured
for one or more Auto Scaling groups.

### Usage

    autoscaling_describe_notification_configurations(AutoScalingGroupNames,
      NextToken, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_describe_notification_configurations_:_AutoScalingGroupNames">AutoScalingGroupNames</code></td>
<td><p>The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_describe_notification_configurations_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_describe_notification_configurations_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of items to return with this call. The default
value is <code>50</code> and the maximum value is
<code>100</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotificationConfigurations = list(
        list(
          AutoScalingGroupName = "string",
          TopicARN = "string",
          NotificationType = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_notification_configurations(
      AutoScalingGroupNames = list(
        "string"
      ),
      NextToken = "string",
      MaxRecords = 123
    )

### Examples

    ## Not run: 
    # This example describes the notification configurations for the specified
    # Auto Scaling group.
    svc$describe_notification_configurations(
      AutoScalingGroupNames = list(
        "my-auto-scaling-group"
      )
    )

    ## End(Not run)
