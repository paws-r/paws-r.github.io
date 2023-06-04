<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_delete_user_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the attributes for a user

### Description

Deletes the attributes for a user.

### Usage

    cognitoidentityprovider_delete_user_attributes(UserAttributeNames,
      AccessToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_delete_user_attributes_:_UserAttributeNames">UserAttributeNames</code></td>
<td><p>[required] An array of strings representing the user attribute
names you want to delete.</p>
<p>For custom attributes, you must prependattach the <code
style="white-space: pre;">⁠custom:⁠</code> prefix to the front of the
attribute name.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_delete_user_attributes_:_AccessToken">AccessToken</code></td>
<td><p>[required] A valid access token that Amazon Cognito issued to the
user whose attributes you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user_attributes(
      UserAttributeNames = list(
        "string"
      ),
      AccessToken = "string"
    )
