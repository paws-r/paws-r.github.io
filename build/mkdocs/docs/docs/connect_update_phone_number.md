<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_phone_number</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates your claimed phone number from its current Amazon Connect instance or traffic distribution group to another Amazon Connect instance or traffic distribution group in the same Amazon Web Services Region

### Description

Updates your claimed phone number from its current Amazon Connect
instance or traffic distribution group to another Amazon Connect
instance or traffic distribution group in the same Amazon Web Services
Region.

After using this API, you must verify that the phone number is attached
to the correct flow in the target instance or traffic distribution
group. You need to do this because the API switches only the phone
number to a new instance or traffic distribution group. It doesn't
migrate the flow configuration of the phone number, too.

You can call `describe_phone_number` API to verify the status of a
previous `update_phone_number` operation.

### Usage

    connect_update_phone_number(PhoneNumberId, TargetArn, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_phone_number_:_PhoneNumberId">PhoneNumberId</code></td>
<td><p>[required] A unique identifier for the phone number.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_phone_number_:_TargetArn">TargetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for Amazon Connect
instances or traffic distribution groups that phone numbers are claimed
to.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_phone_number_:_ClientToken">ClientToken</code></td>
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
      PhoneNumberId = "string",
      PhoneNumberArn = "string"
    )

### Request syntax

    svc$update_phone_number(
      PhoneNumberId = "string",
      TargetArn = "string",
      ClientToken = "string"
    )
