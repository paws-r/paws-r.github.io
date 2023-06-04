<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_put_notification_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Configures an Auto Scaling group to send notifications when specified events take place

### Description

Configures an Auto Scaling group to send notifications when specified
events take place. Subscribers to the specified topic can have messages
delivered to an endpoint such as a web server or an email address.

This configuration overwrites any existing configuration.

For more information, see [Getting Amazon SNS notifications when your
Auto Scaling group
scales](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-sns-notifications.html)
in the *Amazon EC2 Auto Scaling User Guide*.

If you exceed your maximum limit of SNS topics, which is 10 per Auto
Scaling group, the call fails.

### Usage

    autoscaling_put_notification_configuration(AutoScalingGroupName,
      TopicARN, NotificationTypes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="autoscaling_put_notification_configuration_:_AutoScalingGroupName">AutoScalingGroupName</code></td>
<td><p>[required] The name of the Auto Scaling group.</p></td>
</tr>
<tr class="even">
<td><code
id="autoscaling_put_notification_configuration_:_TopicARN">TopicARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon SNS
topic.</p></td>
</tr>
<tr class="odd">
<td><code
id="autoscaling_put_notification_configuration_:_NotificationTypes">NotificationTypes</code></td>
<td><p>[required] The type of event that causes the notification to be
sent. To query the notification types supported by Amazon EC2 Auto
Scaling, call the <code>describe_auto_scaling_notification_types</code>
API.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_notification_configuration(
      AutoScalingGroupName = "string",
      TopicARN = "string",
      NotificationTypes = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example adds the specified notification to the specified Auto
    # Scaling group.
    svc$put_notification_configuration(
      AutoScalingGroupName = "my-auto-scaling-group",
      NotificationTypes = list(
        "autoscaling:TEST_NOTIFICATION"
      ),
      TopicARN = "arn:aws:sns:us-west-2:123456789012:my-sns-topic"
    )

    ## End(Not run)
