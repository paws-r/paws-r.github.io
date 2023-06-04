<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_release_phone_number</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Releases an existing origination phone number in your account

### Description

Releases an existing origination phone number in your account. Once
released, a phone number is no longer available for sending messages.

If the origination phone number has deletion protection enabled or is
associated with a pool, an Error is returned.

### Usage

    pinpointsmsvoicev2_release_phone_number(PhoneNumberId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_release_phone_number_:_PhoneNumberId">PhoneNumberId</code></td>
<td><p>[required] The PhoneNumberId or PhoneNumberArn of the phone
number to release. You can use <code>describe_phone_numbers</code> to
get the values for PhoneNumberId and PhoneNumberArn.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PhoneNumberArn = "string",
      PhoneNumberId = "string",
      PhoneNumber = "string",
      Status = "PENDING"|"ACTIVE"|"ASSOCIATING"|"DISASSOCIATING"|"DELETED",
      IsoCountryCode = "string",
      MessageType = "TRANSACTIONAL"|"PROMOTIONAL",
      NumberCapabilities = list(
        "SMS"|"VOICE"
      ),
      NumberType = "SHORT_CODE"|"LONG_CODE"|"TOLL_FREE"|"TEN_DLC",
      MonthlyLeasingPrice = "string",
      TwoWayEnabled = TRUE|FALSE,
      TwoWayChannelArn = "string",
      SelfManagedOptOutsEnabled = TRUE|FALSE,
      OptOutListName = "string",
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$release_phone_number(
      PhoneNumberId = "string"
    )
