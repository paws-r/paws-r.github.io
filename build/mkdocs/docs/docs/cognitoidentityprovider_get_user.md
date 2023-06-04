<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_get_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the user attributes and metadata for a user

### Description

Gets the user attributes and metadata for a user.

### Usage

    cognitoidentityprovider_get_user(AccessToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_get_user_:_AccessToken">AccessToken</code></td>
<td><p>[required] A non-expired access token for the user whose
information you want to query.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Username = "string",
      UserAttributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      MFAOptions = list(
        list(
          DeliveryMedium = "SMS"|"EMAIL",
          AttributeName = "string"
        )
      ),
      PreferredMfaSetting = "string",
      UserMFASettingList = list(
        "string"
      )
    )

### Request syntax

    svc$get_user(
      AccessToken = "string"
    )
