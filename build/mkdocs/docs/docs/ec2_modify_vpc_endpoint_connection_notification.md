<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_vpc_endpoint_connection_notification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a connection notification for VPC endpoint or VPC endpoint service

### Description

Modifies a connection notification for VPC endpoint or VPC endpoint
service. You can change the SNS topic for the notification, or the
events for which to be notified.

### Usage

    ec2_modify_vpc_endpoint_connection_notification(DryRun,
      ConnectionNotificationId, ConnectionNotificationArn, ConnectionEvents)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_connection_notification_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_connection_notification_:_ConnectionNotificationId">ConnectionNotificationId</code></td>
<td><p>[required] The ID of the notification.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_vpc_endpoint_connection_notification_:_ConnectionNotificationArn">ConnectionNotificationArn</code></td>
<td><p>The ARN for the SNS topic for the notification.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_vpc_endpoint_connection_notification_:_ConnectionEvents">ConnectionEvents</code></td>
<td><p>The events for the endpoint. Valid values are
<code>Accept</code>, <code>Connect</code>, <code>Delete</code>, and
<code>Reject</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReturnValue = TRUE|FALSE
    )

### Request syntax

    svc$modify_vpc_endpoint_connection_notification(
      DryRun = TRUE|FALSE,
      ConnectionNotificationId = "string",
      ConnectionNotificationArn = "string",
      ConnectionEvents = list(
        "string"
      )
    )
