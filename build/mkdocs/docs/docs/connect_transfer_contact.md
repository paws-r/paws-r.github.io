<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_transfer_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Transfers contacts from one agent or queue to another agent or queue at any point after a contact is created

### Description

Transfers contacts from one agent or queue to another agent or queue at
any point after a contact is created. You can transfer a contact to
another queue by providing the flow which orchestrates the contact to
the destination queue. This gives you more control over contact handling
and helps you adhere to the service level agreement (SLA) guaranteed to
your customers.

Note the following requirements:

-   Transfer is supported for only `TASK` contacts.

-   Do not use both `QueueId` and `UserId` in the same call.

-   The following flow types are supported: Inbound flow, Transfer to
    agent flow, and Transfer to queue flow.

-   The `transfer_contact` API can be called only on active contacts.

-   A contact cannot be transferred more than 11 times.

### Usage

    connect_transfer_contact(InstanceId, ContactId, QueueId, UserId,
      ContactFlowId, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_transfer_contact_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_transfer_contact_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact in this instance of
Amazon Connect.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_transfer_contact_:_QueueId">QueueId</code></td>
<td><p>The identifier for the queue.</p></td>
</tr>
<tr class="even">
<td><code id="connect_transfer_contact_:_UserId">UserId</code></td>
<td><p>The identifier for the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_transfer_contact_:_ContactFlowId">ContactFlowId</code></td>
<td><p>[required] The identifier of the flow.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_transfer_contact_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactId = "string",
      ContactArn = "string"
    )

### Request syntax

    svc$transfer_contact(
      InstanceId = "string",
      ContactId = "string",
      QueueId = "string",
      UserId = "string",
      ContactFlowId = "string",
      ClientToken = "string"
    )
