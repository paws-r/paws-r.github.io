<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_opt_in_phone_number</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this request to opt in a phone number that is opted out, which enables you to resume sending SMS messages to the number

### Description

Use this request to opt in a phone number that is opted out, which
enables you to resume sending SMS messages to the number.

You can opt in a phone number only once every 30 days.

### Usage

    sns_opt_in_phone_number(phoneNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_opt_in_phone_number_:_phoneNumber">phoneNumber</code></td>
<td><p>[required] The phone number to opt in. Use E.164 format.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$opt_in_phone_number(
      phoneNumber = "string"
    )
