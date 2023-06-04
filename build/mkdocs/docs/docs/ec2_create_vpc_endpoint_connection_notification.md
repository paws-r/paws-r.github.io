<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_vpc_endpoint_connection_notification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a connection notification for a specified VPC endpoint or VPC endpoint service

### Description

Creates a connection notification for a specified VPC endpoint or VPC
endpoint service. A connection notification notifies you of specific
endpoint events. You must create an SNS topic to receive notifications.
For more information, see [Create a
Topic](https://docs.aws.amazon.com/sns/latest/dg/sns-create-topic.html)
in the *Amazon Simple Notification Service Developer Guide*.

You can create a connection notification for interface endpoints only.

### Usage

    ec2_create_vpc_endpoint_connection_notification(DryRun, ServiceId,
      VpcEndpointId, ConnectionNotificationArn, ConnectionEvents, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_vpc_endpoint_connection_notification_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_endpoint_connection_notification_:_ServiceId">ServiceId</code></td>
<td><p>The ID of the endpoint service.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpc_endpoint_connection_notification_:_VpcEndpointId">VpcEndpointId</code></td>
<td><p>The ID of the endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_endpoint_connection_notification_:_ConnectionNotificationArn">ConnectionNotificationArn</code></td>
<td><p>[required] The ARN of the SNS topic for the
notifications.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_vpc_endpoint_connection_notification_:_ConnectionEvents">ConnectionEvents</code></td>
<td><p>[required] The endpoint events for which to receive
notifications. Valid values are <code>Accept</code>,
<code>Connect</code>, <code>Delete</code>, and
<code>Reject</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_vpc_endpoint_connection_notification_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectionNotification = list(
        ConnectionNotificationId = "string",
        ServiceId = "string",
        VpcEndpointId = "string",
        ConnectionNotificationType = "Topic",
        ConnectionNotificationArn = "string",
        ConnectionEvents = list(
          "string"
        ),
        ConnectionNotificationState = "Enabled"|"Disabled"
      ),
      ClientToken = "string"
    )

### Request syntax

    svc$create_vpc_endpoint_connection_notification(
      DryRun = TRUE|FALSE,
      ServiceId = "string",
      VpcEndpointId = "string",
      ConnectionNotificationArn = "string",
      ConnectionEvents = list(
        "string"
      ),
      ClientToken = "string"
    )
