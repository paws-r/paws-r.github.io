<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_disassociate_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified list of account IDs from the given billing group

### Description

Removes the specified list of account IDs from the given billing group.

### Usage

    billingconductor_disassociate_accounts(Arn, AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_disassociate_accounts_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the billing group
that the array of account IDs will disassociate from.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_disassociate_accounts_:_AccountIds">AccountIds</code></td>
<td><p>[required] The array of account IDs to disassociate.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$disassociate_accounts(
      Arn = "string",
      AccountIds = list(
        "string"
      )
    )
