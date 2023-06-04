<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_get_sms_sandbox_account_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the SMS sandbox status for the calling Amazon Web Services account in the target Amazon Web Services Region

### Description

Retrieves the SMS sandbox status for the calling Amazon Web Services
account in the target Amazon Web Services Region.

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

    sns_get_sms_sandbox_account_status()

### Value

A list with the following syntax:

    list(
      IsInSandbox = TRUE|FALSE
    )

### Request syntax

    svc$get_sms_sandbox_account_status()
