<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_contact_flow_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates metadata about specified flow

### Description

Updates metadata about specified flow.

### Usage

    connect_update_contact_flow_metadata(InstanceId, ContactFlowId, Name,
      Description, ContactFlowState)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_contact_flow_metadata_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_flow_metadata_:_ContactFlowId">ContactFlowId</code></td>
<td><p>[required] The identifier of the flow.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_contact_flow_metadata_:_Name">Name</code></td>
<td><p>The name of the flow.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_flow_metadata_:_Description">Description</code></td>
<td><p>The description of the flow.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_contact_flow_metadata_:_ContactFlowState">ContactFlowState</code></td>
<td><p>The state of flow.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_contact_flow_metadata(
      InstanceId = "string",
      ContactFlowId = "string",
      Name = "string",
      Description = "string",
      ContactFlowState = "ACTIVE"|"ARCHIVED"
    )
