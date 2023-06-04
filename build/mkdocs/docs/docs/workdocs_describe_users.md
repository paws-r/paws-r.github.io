<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_describe_users</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified users

### Description

Describes the specified users. You can describe all users or filter the
results (for example, by status or organization).

By default, Amazon WorkDocs returns the first 24 active or pending
users. If there are more results, the response includes a marker that
you can use to request the next set of results.

### Usage

    workdocs_describe_users(AuthenticationToken, OrganizationId, UserIds,
      Query, Include, Order, Sort, Marker, Limit, Fields)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_describe_users_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_users_:_OrganizationId">OrganizationId</code></td>
<td><p>The ID of the organization.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_describe_users_:_UserIds">UserIds</code></td>
<td><p>The IDs of the users.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_describe_users_:_Query">Query</code></td>
<td><p>A query to filter users by user name. Remember the following
about the <code>Userids</code> and <code>Query</code> parameters:</p>
<ul>
<li><p>If you don't use either parameter, the API returns a paginated
list of all users on the site.</p></li>
<li><p>If you use both parameters, the API ignores the
<code>Query</code> parameter.</p></li>
<li><p>The <code>Userid</code> parameter only returns user names that
match a corresponding user ID.</p></li>
<li><p>The <code>Query</code> parameter runs a "prefix" search for users
by the <code>GivenName</code>, <code>SurName</code>, or
<code>UserName</code> fields included in a <code>create_user</code> API
call. For example, querying on <code>Ma</code> returns Márcia Oliveira,
María García, and Mateo Jackson. If you use multiple characters, the API
only returns data that matches all characters. For example, querying on
<code style="white-space: pre;">⁠Ma J⁠</code> only returns Mateo
Jackson.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="workdocs_describe_users_:_Include">Include</code></td>
<td><p>The state of the users. Specify "ALL" to include inactive
users.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_describe_users_:_Order">Order</code></td>
<td><p>The order for the results.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_describe_users_:_Sort">Sort</code></td>
<td><p>The sorting criteria.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_describe_users_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_describe_users_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_describe_users_:_Fields">Fields</code></td>
<td><p>A comma-separated list of values. Specify "STORAGE_METADATA" to
include the user storage quota and utilization information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Users = list(
        list(
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
      ),
      TotalNumberOfUsers = 123,
      Marker = "string"
    )

### Request syntax

    svc$describe_users(
      AuthenticationToken = "string",
      OrganizationId = "string",
      UserIds = "string",
      Query = "string",
      Include = "ALL"|"ACTIVE_PENDING",
      Order = "ASCENDING"|"DESCENDING",
      Sort = "USER_NAME"|"FULL_NAME"|"STORAGE_LIMIT"|"USER_STATUS"|"STORAGE_USED",
      Marker = "string",
      Limit = 123,
      Fields = "string"
    )
