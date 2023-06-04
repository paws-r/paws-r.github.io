<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_delete_contact_flow</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a flow for the specified Amazon Connect instance

### Description

Deletes a flow for the specified Amazon Connect instance.

### Usage

    connect_delete_contact_flow(InstanceId, ContactFlowId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_delete_contact_flow_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_delete_contact_flow_:_ContactFlowId">ContactFlowId</code></td>
<td><p>[required] The identifier of the flow.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_contact_flow(
      InstanceId = "string",
      ContactFlowId = "string"
    )
