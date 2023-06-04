<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_contact_flow</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified flow

### Description

Describes the specified flow.

You can also create and update flows using the [Amazon Connect Flow
language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

### Usage

    connect_describe_contact_flow(InstanceId, ContactFlowId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_contact_flow_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_contact_flow_:_ContactFlowId">ContactFlowId</code></td>
<td><p>[required] The identifier of the flow.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactFlow = list(
        Arn = "string",
        Id = "string",
        Name = "string",
        Type = "CONTACT_FLOW"|"CUSTOMER_QUEUE"|"CUSTOMER_HOLD"|"CUSTOMER_WHISPER"|"AGENT_HOLD"|"AGENT_WHISPER"|"OUTBOUND_WHISPER"|"AGENT_TRANSFER"|"QUEUE_TRANSFER",
        State = "ACTIVE"|"ARCHIVED",
        Description = "string",
        Content = "string",
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_contact_flow(
      InstanceId = "string",
      ContactFlowId = "string"
    )
