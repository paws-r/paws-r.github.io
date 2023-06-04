<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_list_sms_sandbox_phone_numbers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the calling Amazon Web Services account's current verified and pending destination phone numbers in the SMS sandbox

### Description

Lists the calling Amazon Web Services account's current verified and
pending destination phone numbers in the SMS sandbox.

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

    sns_list_sms_sandbox_phone_numbers(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_list_sms_sandbox_phone_numbers_:_NextToken">NextToken</code></td>
<td><p>Token that the previous
<code>ListSMSSandboxPhoneNumbersInput</code> request returns.</p></td>
</tr>
<tr class="even">
<td><code
id="sns_list_sms_sandbox_phone_numbers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of phone numbers to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PhoneNumbers = list(
        list(
          PhoneNumber = "string",
          Status = "Pending"|"Verified"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_sms_sandbox_phone_numbers(
      NextToken = "string",
      MaxResults = 123
    )
