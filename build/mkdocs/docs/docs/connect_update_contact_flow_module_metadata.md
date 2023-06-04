<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_contact_flow_module_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates metadata about specified flow module

### Description

Updates metadata about specified flow module.

### Usage

    connect_update_contact_flow_module_metadata(InstanceId,
      ContactFlowModuleId, Name, Description, State)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_contact_flow_module_metadata_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_flow_module_metadata_:_ContactFlowModuleId">ContactFlowModuleId</code></td>
<td><p>[required] The identifier of the flow module.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_contact_flow_module_metadata_:_Name">Name</code></td>
<td><p>The name of the flow module.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_flow_module_metadata_:_Description">Description</code></td>
<td><p>The description of the flow module.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_contact_flow_module_metadata_:_State">State</code></td>
<td><p>The state of flow module.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_contact_flow_module_metadata(
      InstanceId = "string",
      ContactFlowModuleId = "string",
      Name = "string",
      Description = "string",
      State = "ACTIVE"|"ARCHIVED"
    )
