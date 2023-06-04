<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_describe_root_folders</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the current user's special folders; the RootFolder and the RecycleBin

### Description

Describes the current user's special folders; the `RootFolder` and the
`RecycleBin`. `RootFolder` is the root of user's files and folders and
`RecycleBin` is the root of recycled items. This is not a valid action
for SigV4 (administrative API) clients.

This action requires an authentication token. To get an authentication
token, register an application with Amazon WorkDocs. For more
information, see [Authentication and Access Control for User
Applications](https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html)
in the *Amazon WorkDocs Developer Guide*.

### Usage

    workdocs_describe_root_folders(AuthenticationToken, Limit, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_describe_root_folders_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>[required] Amazon WorkDocs authentication token.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_describe_root_folders_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_describe_root_folders_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Folders = list(
        list(
          Id = "string",
          Name = "string",
          CreatorId = "string",
          ParentFolderId = "string",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ModifiedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ResourceState = "ACTIVE"|"RESTORING"|"RECYCLING"|"RECYCLED",
          Signature = "string",
          Labels = list(
            "string"
          ),
          Size = 123,
          LatestVersionSize = 123
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_root_folders(
      AuthenticationToken = "string",
      Limit = 123,
      Marker = "string"
    )
