<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_delete_sms_sandbox_phone_number</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon Web Services account's verified or pending phone number from the SMS sandbox

### Description

Deletes an Amazon Web Services account's verified or pending phone
number from the SMS sandbox.

When you start using Amazon SNS to send SMS messages, your Amazon Web
Services account is in the *SMS sandbox*. The SMS sandbox provides a
safe environment for you to try Amazon SNS features without risking your
reputation as an SMS sender. While your Amazon Web Services account is
in the SMS sandbox, you can use all of the features of Amazon SNS.
However, you can send SMS messages only to verified destination phone
numbers. For more information, including how to move out of the sandbox
to send messages without restrictions, see [SMS
sandbox](https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html)
in the *Amazon SNS Developer Guide*.

### Usage

    sns_delete_sms_sandbox_phone_number(PhoneNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_delete_sms_sandbox_phone_number_:_PhoneNumber">PhoneNumber</code></td>
<td><p>[required] The destination phone number to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_sms_sandbox_phone_number(
      PhoneNumber = "string"
    )
