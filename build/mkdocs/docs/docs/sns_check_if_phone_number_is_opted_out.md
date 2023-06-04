<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_check_if_phone_number_is_opted_out</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts a phone number and indicates whether the phone holder has opted out of receiving SMS messages from your Amazon Web Services account

### Description

Accepts a phone number and indicates whether the phone holder has opted
out of receiving SMS messages from your Amazon Web Services account. You
cannot send SMS messages to a number that is opted out.

To resume sending messages, you can opt in the number by using the
`opt_in_phone_number` action.

### Usage

    sns_check_if_phone_number_is_opted_out(phoneNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_check_if_phone_number_is_opted_out_:_phoneNumber">phoneNumber</code></td>
<td><p>[required] The phone number for which you want to check the opt
out status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      isOptedOut = TRUE|FALSE
    )

### Request syntax

    svc$check_if_phone_number_is_opted_out(
      phoneNumber = "string"
    )
