<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_participant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a new participant into an on-going chat contact

### Description

Adds a new participant into an on-going chat contact. For more
information, see [Customize chat flow experiences by integrating custom
participants](https://docs.aws.amazon.com/connect/latest/adminguide/chat-customize-flow.html).

### Usage

    connect_create_participant(InstanceId, ContactId, ClientToken,
      ParticipantDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_participant_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_participant_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact in this instance of
Amazon Connect. Only contacts in the CHAT channel are
supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_participant_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_participant_:_ParticipantDetails">ParticipantDetails</code></td>
<td><p>[required] Information identifying the participant.</p>
<p>The only Valid value for <code>ParticipantRole</code> is
<code>CUSTOM_BOT</code>.</p>
<p><code>DisplayName</code> is <strong>Required</strong>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ParticipantCredentials = list(
        ParticipantToken = "string",
        Expiry = "string"
      ),
      ParticipantId = "string"
    )

### Request syntax

    svc$create_participant(
      InstanceId = "string",
      ContactId = "string",
      ClientToken = "string",
      ParticipantDetails = list(
        ParticipantRole = "AGENT"|"CUSTOMER"|"SYSTEM"|"CUSTOM_BOT",
        DisplayName = "string"
      )
    )
