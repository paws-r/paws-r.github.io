<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_update_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site

### Description

Updates the specified attributes of the specified user, and grants or
revokes administrative privileges to the Amazon WorkDocs site.

### Usage

    workdocs_update_user(AuthenticationToken, UserId, GivenName, Surname,
      Type, StorageRule, TimeZoneId, Locale, GrantPoweruserPrivileges)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_update_user_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_update_user_:_UserId">UserId</code></td>
<td><p>[required] The ID of the user.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_update_user_:_GivenName">GivenName</code></td>
<td><p>The given name of the user.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_update_user_:_Surname">Surname</code></td>
<td><p>The surname of the user.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_update_user_:_Type">Type</code></td>
<td><p>The type of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_update_user_:_StorageRule">StorageRule</code></td>
<td><p>The amount of storage for the user.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_update_user_:_TimeZoneId">TimeZoneId</code></td>
<td><p>The time zone ID of the user.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_update_user_:_Locale">Locale</code></td>
<td><p>The locale of the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_update_user_:_GrantPoweruserPrivileges">GrantPoweruserPrivileges</code></td>
<td><p>Boolean value to determine whether the user is granted Power user
privileges.</p></td>
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

    svc$update_user(
      AuthenticationToken = "string",
      UserId = "string",
      GivenName = "string",
      Surname = "string",
      Type = "USER"|"ADMIN"|"POWERUSER"|"MINIMALUSER"|"WORKSPACESUSER",
      StorageRule = list(
        StorageAllocatedInBytes = 123,
        StorageType = "UNLIMITED"|"QUOTA"
      ),
      TimeZoneId = "string",
      Locale = "en"|"fr"|"ko"|"de"|"es"|"ja"|"ru"|"zh_CN"|"zh_TW"|"pt_BR"|"default",
      GrantPoweruserPrivileges = "TRUE"|"FALSE"
    )
