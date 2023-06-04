<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_contact_flow_module_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates specified flow module for the specified Amazon Connect instance

### Description

Updates specified flow module for the specified Amazon Connect instance.

### Usage

    connect_update_contact_flow_module_content(InstanceId,
      ContactFlowModuleId, Content)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_contact_flow_module_content_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_flow_module_content_:_ContactFlowModuleId">ContactFlowModuleId</code></td>
<td><p>[required] The identifier of the flow module.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_contact_flow_module_content_:_Content">Content</code></td>
<td><p>[required] The content of the flow module.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_contact_flow_module_content(
      InstanceId = "string",
      ContactFlowModuleId = "string",
      Content = "string"
    )
