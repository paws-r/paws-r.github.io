<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_account_customization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes all Amazon QuickSight customizations in this Amazon Web Services Region for the specified Amazon Web Services account and Amazon QuickSight namespace

### Description

Deletes all Amazon QuickSight customizations in this Amazon Web Services
Region for the specified Amazon Web Services account and Amazon
QuickSight namespace.

### Usage

    quicksight_delete_account_customization(AwsAccountId, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_account_customization_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that you
want to delete Amazon QuickSight customizations from in this Amazon Web
Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_account_customization_:_Namespace">Namespace</code></td>
<td><p>The Amazon QuickSight namespace that you're deleting the
customizations from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$delete_account_customization(
      AwsAccountId = "string",
      Namespace = "string"
    )
