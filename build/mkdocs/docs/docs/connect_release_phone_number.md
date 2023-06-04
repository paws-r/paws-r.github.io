<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_release_phone_number</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Releases a phone number previously claimed to an Amazon Connect instance or traffic distribution group

### Description

Releases a phone number previously claimed to an Amazon Connect instance
or traffic distribution group. You can call this API only in the Amazon
Web Services Region where the number was claimed.

To release phone numbers from a traffic distribution group, use the
`release_phone_number` API, not the Amazon Connect console.

After releasing a phone number, the phone number enters into a cooldown
period of 30 days. It cannot be searched for or claimed again until the
period has ended. If you accidentally release a phone number, contact
Amazon Web Services Support.

### Usage

    connect_release_phone_number(PhoneNumberId, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_release_phone_number_:_PhoneNumberId">PhoneNumberId</code></td>
<td><p>[required] A unique identifier for the phone number.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_release_phone_number_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$release_phone_number(
      PhoneNumberId = "string",
      ClientToken = "string"
    )
