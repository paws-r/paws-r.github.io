<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_get_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves details for a specific user

### Description

Retrieves details for a specific user.

### Usage

    finspacedata_get_user(userId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="finspacedata_get_user_:_userId">userId</code></td>
<td><p>[required] The unique identifier of the user to get data
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      userId = "string",
      status = "CREATING"|"ENABLED"|"DISABLED",
      firstName = "string",
      lastName = "string",
      emailAddress = "string",
      type = "SUPER_USER"|"APP_USER",
      apiAccess = "ENABLED"|"DISABLED",
      apiAccessPrincipalArn = "string",
      createTime = 123,
      lastEnabledTime = 123,
      lastDisabledTime = 123,
      lastModifiedTime = 123,
      lastLoginTime = 123
    )

### Request syntax

    svc$get_user(
      userId = "string"
    )
