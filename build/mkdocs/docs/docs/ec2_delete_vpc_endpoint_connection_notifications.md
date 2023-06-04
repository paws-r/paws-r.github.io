<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_vpc_endpoint_connection_notifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified VPC endpoint connection notifications

### Description

Deletes the specified VPC endpoint connection notifications.

### Usage

    ec2_delete_vpc_endpoint_connection_notifications(DryRun,
      ConnectionNotificationIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_vpc_endpoint_connection_notifications_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_vpc_endpoint_connection_notifications_:_ConnectionNotificationIds">ConnectionNotificationIds</code></td>
<td><p>[required] The IDs of the notifications.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Unsuccessful = list(
        list(
          Error = list(
            Code = "string",
            Message = "string"
          ),
          ResourceId = "string"
        )
      )
    )

### Request syntax

    svc$delete_vpc_endpoint_connection_notifications(
      DryRun = TRUE|FALSE,
      ConnectionNotificationIds = list(
        "string"
      )
    )
