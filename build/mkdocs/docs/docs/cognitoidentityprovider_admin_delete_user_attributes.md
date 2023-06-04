<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_admin_delete_user_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the user attributes in a user pool as an administrator

### Description

Deletes the user attributes in a user pool as an administrator. Works on
any user.

Calling this action requires developer credentials.

### Usage

    cognitoidentityprovider_admin_delete_user_attributes(UserPoolId,
      Username, UserAttributeNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_delete_user_attributes_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID for the user pool where you want to
delete user attributes.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_admin_delete_user_attributes_:_Username">Username</code></td>
<td><p>[required] The user name of the user from which you would like to
delete attributes.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitoidentityprovider_admin_delete_user_attributes_:_UserAttributeNames">UserAttributeNames</code></td>
<td><p>[required] An array of strings representing the user attribute
names you want to delete.</p>
<p>For custom attributes, you must prepend the <code
style="white-space: pre;">⁠custom:⁠</code> prefix to the attribute
name.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$admin_delete_user_attributes(
      UserPoolId = "string",
      Username = "string",
      UserAttributeNames = list(
        "string"
      )
    )
