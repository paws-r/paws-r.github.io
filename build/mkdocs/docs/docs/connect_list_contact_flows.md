<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_contact_flows</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the flows for the specified Amazon Connect instance

### Description

Provides information about the flows for the specified Amazon Connect
instance.

You can also create and update flows using the [Amazon Connect Flow
language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

For more information about flows, see
[Flows](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_list_contact_flows(InstanceId, ContactFlowTypes, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_contact_flows_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_contact_flows_:_ContactFlowTypes">ContactFlowTypes</code></td>
<td><p>The type of flow.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_contact_flows_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_contact_flows_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page. The default
MaxResult size is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactFlowSummaryList = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string",
          ContactFlowType = "CONTACT_FLOW"|"CUSTOMER_QUEUE"|"CUSTOMER_HOLD"|"CUSTOMER_WHISPER"|"AGENT_HOLD"|"AGENT_WHISPER"|"OUTBOUND_WHISPER"|"AGENT_TRANSFER"|"QUEUE_TRANSFER",
          ContactFlowState = "ACTIVE"|"ARCHIVED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_contact_flows(
      InstanceId = "string",
      ContactFlowTypes = list(
        "CONTACT_FLOW"|"CUSTOMER_QUEUE"|"CUSTOMER_HOLD"|"CUSTOMER_WHISPER"|"AGENT_HOLD"|"AGENT_WHISPER"|"OUTBOUND_WHISPER"|"AGENT_TRANSFER"|"QUEUE_TRANSFER"
      ),
      NextToken = "string",
      MaxResults = 123
    )
