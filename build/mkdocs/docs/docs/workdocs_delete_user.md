<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified user from a Simple AD or Microsoft AD directory

### Description

Deletes the specified user from a Simple AD or Microsoft AD directory.

Deleting a user immediately and permanently deletes all content in that
user's folder structure. Site retention policies do NOT apply to this
type of deletion.

### Usage

    workdocs_delete_user(AuthenticationToken, UserId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_delete_user_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Do not set this field when
using administrative API actions, as in accessing the API using Amazon
Web Services credentials.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_delete_user_:_UserId">UserId</code></td>
<td><p>[required] The ID of the user.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user(
      AuthenticationToken = "string",
      UserId = "string"
    )
