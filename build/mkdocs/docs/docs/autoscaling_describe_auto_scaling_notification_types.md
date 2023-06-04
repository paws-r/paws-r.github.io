<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_auto_scaling_notification_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the notification types that are supported by Amazon EC2 Auto Scaling

### Description

Describes the notification types that are supported by Amazon EC2 Auto
Scaling.

### Usage

    autoscaling_describe_auto_scaling_notification_types()

### Value

A list with the following syntax:

    list(
      AutoScalingNotificationTypes = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes the available notification types.
    svc$describe_auto_scaling_notification_types()

    ## End(Not run)
