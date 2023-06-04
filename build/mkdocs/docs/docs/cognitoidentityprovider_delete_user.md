<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows a user to delete himself or herself

### Description

Allows a user to delete himself or herself.

### Usage

    cognitoidentityprovider_delete_user(AccessToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_delete_user_:_AccessToken">AccessToken</code></td>
<td><p>[required] A valid access token that Amazon Cognito issued to the
user whose user profile you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user(
      AccessToken = "string"
    )
