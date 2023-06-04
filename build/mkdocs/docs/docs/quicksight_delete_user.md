<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the Amazon QuickSight user that is associated with the identity of the IAM user or role that's making the call

### Description

Deletes the Amazon QuickSight user that is associated with the identity
of the IAM user or role that's making the call. The IAM user isn't
deleted as a result of this call.

### Usage

    quicksight_delete_user(UserName, AwsAccountId, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="quicksight_delete_user_:_UserName">UserName</code></td>
<td><p>[required] The name of the user that you want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_user_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
user is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_delete_user_:_Namespace">Namespace</code></td>
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

    svc$delete_user(
      UserName = "string",
      AwsAccountId = "string",
      Namespace = "string"
    )
