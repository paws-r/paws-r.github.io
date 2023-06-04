<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_delete_notification_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified notification

### Description

Deletes the specified notification.

### Usage

    autoscaling_delete_notification_configuration(AutoScalingGroupName,
      TopicARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_delete_notification_configuration_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_delete_notification_configuration_:_TopicARN">TopicARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon SNS
topic.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_notification_configuration(
      AutoScalingGroupName = "string",
      TopicARN = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the specified notification from the specified Auto
    # Scaling group.
    svc$delete_notification_configuration(
      AutoScalingGroupName = "my-auto-scaling-group",
      TopicARN = "arn:aws:sns:us-west-2:123456789012:my-sns-topic"
    )

    ## End(Not run)
