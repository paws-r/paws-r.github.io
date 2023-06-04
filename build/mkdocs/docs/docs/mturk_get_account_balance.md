<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_get_account_balance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The GetAccountBalance operation retrieves the Prepaid HITs balance in your Amazon Mechanical Turk account if you are a Prepaid Requester

### Description

The `get_account_balance` operation retrieves the Prepaid HITs balance
in your Amazon Mechanical Turk account if you are a Prepaid Requester.
Alternatively, this operation will retrieve the remaining available AWS
Billing usage if you have enabled AWS Billing. Note: If you have enabled
AWS Billing and still have a remaining Prepaid HITs balance, this
balance can be viewed on the My Account page in the Requester console.

### Usage

    mturk_get_account_balance()

### Value

A list with the following syntax:

    list(
      AvailableBalance = "string",
      OnHoldBalance = "string"
    )

### Request syntax

    svc$get_account_balance()
