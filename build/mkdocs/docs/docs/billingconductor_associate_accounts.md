<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_associate_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Connects an array of account IDs in a consolidated billing family to a predefined billing group

### Description

Connects an array of account IDs in a consolidated billing family to a
predefined billing group. The account IDs must be a part of the
consolidated billing family during the current month, and not already
associated with another billing group. The maximum number of accounts
that can be associated in one call is 30.

### Usage

    billingconductor_associate_accounts(Arn, AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="billingconductor_associate_accounts_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the billing group
that associates the array of account IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_associate_accounts_:_AccountIds">AccountIds</code></td>
<td><p>[required] The associating array of account IDs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$associate_accounts(
      Arn = "string",
      AccountIds = list(
        "string"
      )
    )
