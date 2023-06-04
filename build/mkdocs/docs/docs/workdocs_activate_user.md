<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_activate_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates the specified user

### Description

Activates the specified user. Only active users can access Amazon
WorkDocs.

### Usage

    workdocs_activate_user(UserId, AuthenticationToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="workdocs_activate_user_:_UserId">UserId</code></td>
<td><p>[required] The ID of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_activate_user_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      User = list(
        Id = "string",
        Username = "string",
        EmailAddress = "string",
        GivenName = "string",
        Surname = "string",
        OrganizationId = "string",
        RootFolderId = "string",
        RecycleBinFolderId = "string",
        Status = "ACTIVE"|"INACTIVE"|"PENDING",
        Type = "USER"|"ADMIN"|"POWERUSER"|"MINIMALUSER"|"WORKSPACESUSER",
        CreatedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        ModifiedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        TimeZoneId = "string",
        Locale = "en"|"fr"|"ko"|"de"|"es"|"ja"|"ru"|"zh_CN"|"zh_TW"|"pt_BR"|"default",
        Storage = list(
          StorageUtilizedInBytes = 123,
          StorageRule = list(
            StorageAllocatedInBytes = 123,
            StorageType = "UNLIMITED"|"QUOTA"
          )
        )
      )
    )

### Request syntax

    svc$activate_user(
      UserId = "string",
      AuthenticationToken = "string"
    )
