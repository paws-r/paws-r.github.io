<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_contact_flow_module</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified flow module

### Description

Describes the specified flow module.

### Usage

    connect_describe_contact_flow_module(InstanceId, ContactFlowModuleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_contact_flow_module_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_contact_flow_module_:_ContactFlowModuleId">ContactFlowModuleId</code></td>
<td><p>[required] The identifier of the flow module.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactFlowModule = list(
        Arn = "string",
        Id = "string",
        Name = "string",
        Content = "string",
        Description = "string",
        State = "ACTIVE"|"ARCHIVED",
        Status = "PUBLISHED"|"SAVED",
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_contact_flow_module(
      InstanceId = "string",
      ContactFlowModuleId = "string"
    )
