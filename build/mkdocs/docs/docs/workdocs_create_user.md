<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_create_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a user in a Simple AD or Microsoft AD directory

### Description

Creates a user in a Simple AD or Microsoft AD directory. The status of a
newly created user is "ACTIVE". New users can access Amazon WorkDocs.

### Usage

    workdocs_create_user(OrganizationId, Username, EmailAddress, GivenName,
      Surname, Password, TimeZoneId, StorageRule, AuthenticationToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_create_user_:_OrganizationId">OrganizationId</code></td>
<td><p>The ID of the organization.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_create_user_:_Username">Username</code></td>
<td><p>[required] The login name of the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_create_user_:_EmailAddress">EmailAddress</code></td>
<td><p>The email address of the user.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_create_user_:_GivenName">GivenName</code></td>
<td><p>[required] The given name of the user.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_create_user_:_Surname">Surname</code></td>
<td><p>[required] The surname of the user.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_create_user_:_Password">Password</code></td>
<td><p>[required] The password of the user.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_create_user_:_TimeZoneId">TimeZoneId</code></td>
<td><p>The time zone ID of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_create_user_:_StorageRule">StorageRule</code></td>
<td><p>The amount of storage for the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_create_user_:_AuthenticationToken">AuthenticationToken</code></td>
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

    svc$create_user(
      OrganizationId = "string",
      Username = "string",
      EmailAddress = "string",
      GivenName = "string",
      Surname = "string",
      Password = "string",
      TimeZoneId = "string",
      StorageRule = list(
        StorageAllocatedInBytes = 123,
        StorageType = "UNLIMITED"|"QUOTA"
      ),
      AuthenticationToken = "string"
    )
