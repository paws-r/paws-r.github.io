<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_claim_phone_number</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Claims an available phone number to your Amazon Connect instance or traffic distribution group

### Description

Claims an available phone number to your Amazon Connect instance or
traffic distribution group. You can call this API only in the same
Amazon Web Services Region where the Amazon Connect instance or traffic
distribution group was created.

For more information about how to use this operation, see [Claim a phone
number in your
country](https://docs.aws.amazon.com/connect/latest/adminguide/get-connect-number.html)
and [Claim phone numbers to traffic distribution
groups](https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-numbers-traffic-distribution-groups.html)
in the *Amazon Connect Administrator Guide*.

You can call the `search_available_phone_numbers` API for available
phone numbers that you can claim. Call the `describe_phone_number` API
to verify the status of a previous `claim_phone_number` operation.

### Usage

    connect_claim_phone_number(TargetArn, PhoneNumber,
      PhoneNumberDescription, Tags, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_claim_phone_number_:_TargetArn">TargetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for Amazon Connect
instances or traffic distribution groups that phone numbers are claimed
to.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_claim_phone_number_:_PhoneNumber">PhoneNumber</code></td>
<td><p>[required] The phone number you want to claim. Phone numbers are
formatted <code
style="white-space: pre;">⁠[+] [country code] [subscriber number including area code]⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_claim_phone_number_:_PhoneNumberDescription">PhoneNumberDescription</code></td>
<td><p>The description of the phone number.</p></td>
</tr>
<tr class="even">
<td><code id="connect_claim_phone_number_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_claim_phone_number_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p>
<p>Pattern: <code
style="white-space: pre;">⁠^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PhoneNumberId = "string",
      PhoneNumberArn = "string"
    )

### Request syntax

    svc$claim_phone_number(
      TargetArn = "string",
      PhoneNumber = "string",
      PhoneNumberDescription = "string",
      Tags = list(
        "string"
      ),
      ClientToken = "string"
    )
