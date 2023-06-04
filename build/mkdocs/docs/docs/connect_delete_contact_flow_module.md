<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_delete_contact_flow_module</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified flow module

### Description

Deletes the specified flow module.

### Usage

    connect_delete_contact_flow_module(InstanceId, ContactFlowModuleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_delete_contact_flow_module_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_delete_contact_flow_module_:_ContactFlowModuleId">ContactFlowModuleId</code></td>
<td><p>[required] The identifier of the flow module.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_contact_flow_module(
      InstanceId = "string",
      ContactFlowModuleId = "string"
    )
