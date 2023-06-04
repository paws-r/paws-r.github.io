<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpc_endpoint_connection_notifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the connection notifications for VPC endpoints and VPC endpoint services

### Description

Describes the connection notifications for VPC endpoints and VPC
endpoint services.

### Usage

    ec2_describe_vpc_endpoint_connection_notifications(DryRun,
      ConnectionNotificationId, Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_connection_notifications_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_endpoint_connection_notifications_:_ConnectionNotificationId">ConnectionNotificationId</code></td>
<td><p>The ID of the notification.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_connection_notifications_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>connection-notification-arn</code> - The ARN of the SNS
topic for the notification.</p></li>
<li><p><code>connection-notification-id</code> - The ID of the
notification.</p></li>
<li><p><code>connection-notification-state</code> - The state of the
notification (<code>Enabled</code> | <code>Disabled</code>).</p></li>
<li><p><code>connection-notification-type</code> - The type of
notification (<code>Topic</code>).</p></li>
<li><p><code>service-id</code> - The ID of the endpoint
service.</p></li>
<li><p><code>vpc-endpoint-id</code> - The ID of the VPC
endpoint.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_endpoint_connection_notifications_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single call. To
retrieve the remaining results, make another request with the returned
<code>NextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_connection_notifications_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectionNotificationSet = list(
        list(
          ConnectionNotificationId = "string",
          ServiceId = "string",
          VpcEndpointId = "string",
          ConnectionNotificationType = "Topic",
          ConnectionNotificationArn = "string",
          ConnectionEvents = list(
            "string"
          ),
          ConnectionNotificationState = "Enabled"|"Disabled"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_vpc_endpoint_connection_notifications(
      DryRun = TRUE|FALSE,
      ConnectionNotificationId = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
