<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_start_outbound_voice_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Places an outbound call to a contact, and then initiates the flow

### Description

Places an outbound call to a contact, and then initiates the flow. It
performs the actions in the flow that's specified (in `ContactFlowId`).

Agents do not initiate the outbound API, which means that they do not
dial the contact. If the flow places an outbound call to a contact, and
then puts the contact in queue, the call is then routed to the agent,
like any other inbound case.

There is a 60-second dialing timeout for this operation. If the call is
not connected after 60 seconds, it fails.

UK numbers with a 447 prefix are not allowed by default. Before you can
dial these UK mobile numbers, you must submit a service quota increase
request. For more information, see [Amazon Connect Service
Quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
in the *Amazon Connect Administrator Guide*.

Campaign calls are not allowed by default. Before you can make a call
with `TrafficType` = `CAMPAIGN`, you must submit a service quota
increase request to the quota [Amazon Connect
campaigns](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#outbound-communications-quotas).

### Usage

    connect_start_outbound_voice_contact(DestinationPhoneNumber,
      ContactFlowId, InstanceId, ClientToken, SourcePhoneNumber, QueueId,
      Attributes, AnswerMachineDetectionConfig, CampaignId, TrafficType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_start_outbound_voice_contact_:_DestinationPhoneNumber">DestinationPhoneNumber</code></td>
<td><p>[required] The phone number of the customer, in E.164
format.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_outbound_voice_contact_:_ContactFlowId">ContactFlowId</code></td>
<td><p>[required] The identifier of the flow for the outbound call. To
see the ContactFlowId in the Amazon Connect console user interface, on
the navigation menu go to <strong>Routing</strong>, <strong>Contact
Flows</strong>. Choose the flow. On the flow page, under the name of the
flow, choose <strong>Show additional flow information</strong>. The
ContactFlowId is the last part of the ARN, shown here in bold:</p>
<p>arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/<strong>846ec553-a005-41c0-8341-xxxxxxxxxxxx</strong></p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_outbound_voice_contact_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_outbound_voice_contact_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>. The token is valid for 7 days
after creation. If a contact is already started, the contact ID is
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_outbound_voice_contact_:_SourcePhoneNumber">SourcePhoneNumber</code></td>
<td><p>The phone number associated with the Amazon Connect instance, in
E.164 format. If you do not specify a source phone number, you must
specify a queue.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_outbound_voice_contact_:_QueueId">QueueId</code></td>
<td><p>The queue for the call. If you specify a queue, the phone
displayed for caller ID is the phone number specified in the queue. If
you do not specify a queue, the queue defined in the flow is used. If
you do not specify a queue, you must specify a source phone
number.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_outbound_voice_contact_:_Attributes">Attributes</code></td>
<td><p>A custom key-value pair using an attribute map. The attributes
are standard Amazon Connect attributes, and can be accessed in flows
just like any other contact attributes.</p>
<p>There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_outbound_voice_contact_:_AnswerMachineDetectionConfig">AnswerMachineDetectionConfig</code></td>
<td><p>Configuration of the answering machine detection for this
outbound call.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_start_outbound_voice_contact_:_CampaignId">CampaignId</code></td>
<td><p>The campaign identifier of the outbound communication.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_start_outbound_voice_contact_:_TrafficType">TrafficType</code></td>
<td><p>Denotes the class of traffic. Calls with different traffic types
are handled differently by Amazon Connect. The default value is
<code>GENERAL</code>. Use <code>CAMPAIGN</code> if
<code>EnableAnswerMachineDetection</code> is set to <code>true</code>.
For all other cases, use <code>GENERAL</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactId = "string"
    )

### Request syntax

    svc$start_outbound_voice_contact(
      DestinationPhoneNumber = "string",
      ContactFlowId = "string",
      InstanceId = "string",
      ClientToken = "string",
      SourcePhoneNumber = "string",
      QueueId = "string",
      Attributes = list(
        "string"
      ),
      AnswerMachineDetectionConfig = list(
        EnableAnswerMachineDetection = TRUE|FALSE,
        AwaitAnswerMachinePrompt = TRUE|FALSE
      ),
      CampaignId = "string",
      TrafficType = "GENERAL"|"CAMPAIGN"
    )
