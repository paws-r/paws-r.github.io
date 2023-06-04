<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_contact_flow_name</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The name of the flow

### Description

The name of the flow.

You can also create and update flows using the [Amazon Connect Flow
language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

### Usage

    connect_update_contact_flow_name(InstanceId, ContactFlowId, Name,
      Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_contact_flow_name_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_flow_name_:_ContactFlowId">ContactFlowId</code></td>
<td><p>[required] The identifier of the flow.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_update_contact_flow_name_:_Name">Name</code></td>
<td><p>The name of the flow.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_flow_name_:_Description">Description</code></td>
<td><p>The description of the flow.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_contact_flow_name(
      InstanceId = "string",
      ContactFlowId = "string",
      Name = "string",
      Description = "string"
    )
