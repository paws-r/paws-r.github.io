<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_contact_flow</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a flow for the specified Amazon Connect instance

### Description

Creates a flow for the specified Amazon Connect instance.

You can also create and update flows using the [Amazon Connect Flow
language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

### Usage

    connect_create_contact_flow(InstanceId, Name, Type, Description,
      Content, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_contact_flow_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_contact_flow_:_Name">Name</code></td>
<td><p>[required] The name of the flow.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_create_contact_flow_:_Type">Type</code></td>
<td><p>[required] The type of the flow. For descriptions of the
available types, see <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types">Choose
a flow type</a> in the <em>Amazon Connect Administrator
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_contact_flow_:_Description">Description</code></td>
<td><p>The description of the flow.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_create_contact_flow_:_Content">Content</code></td>
<td><p>[required] The content of the flow.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_contact_flow_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactFlowId = "string",
      ContactFlowArn = "string"
    )

### Request syntax

    svc$create_contact_flow(
      InstanceId = "string",
      Name = "string",
      Type = "CONTACT_FLOW"|"CUSTOMER_QUEUE"|"CUSTOMER_HOLD"|"CUSTOMER_WHISPER"|"AGENT_HOLD"|"AGENT_WHISPER"|"OUTBOUND_WHISPER"|"AGENT_TRANSFER"|"QUEUE_TRANSFER",
      Description = "string",
      Content = "string",
      Tags = list(
        "string"
      )
    )
