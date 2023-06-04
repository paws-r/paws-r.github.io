<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_user_by_principal_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a user identified by its principal ID

### Description

Deletes a user identified by its principal ID.

### Usage

    quicksight_delete_user_by_principal_id(PrincipalId, AwsAccountId,
      Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_user_by_principal_id_:_PrincipalId">PrincipalId</code></td>
<td><p>[required] The principal ID of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_user_by_principal_id_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
user is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_delete_user_by_principal_id_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace. Currently, you should set this to
<code>default</code>.</p></td>
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

    svc$delete_user_by_principal_id(
      PrincipalId = "string",
      AwsAccountId = "string",
      Namespace = "string"
    )
