<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_contact_flow_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified flow

### Description

Updates the specified flow.

You can also create and update flows using the [Amazon Connect Flow
language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

### Usage

    connect_update_contact_flow_content(InstanceId, ContactFlowId, Content)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_contact_flow_content_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_contact_flow_content_:_ContactFlowId">ContactFlowId</code></td>
<td><p>[required] The identifier of the flow.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_contact_flow_content_:_Content">Content</code></td>
<td><p>[required] The JSON string that represents flow's content. For an
example, see <a
href="https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html">Example
contact flow in Amazon Connect Flow language</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_contact_flow_content(
      InstanceId = "string",
      ContactFlowId = "string",
      Content = "string"
    )
