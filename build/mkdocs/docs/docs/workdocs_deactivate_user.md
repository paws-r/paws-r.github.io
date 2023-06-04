<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_deactivate_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deactivates the specified user, which revokes the user's access to Amazon WorkDocs

### Description

Deactivates the specified user, which revokes the user's access to
Amazon WorkDocs.

### Usage

    workdocs_deactivate_user(UserId, AuthenticationToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="workdocs_deactivate_user_:_UserId">UserId</code></td>
<td><p>[required] The ID of the user.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_deactivate_user_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deactivate_user(
      UserId = "string",
      AuthenticationToken = "string"
    )
