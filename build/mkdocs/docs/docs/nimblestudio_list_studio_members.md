<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_list_studio_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get all users in a given studio membership

### Description

Get all users in a given studio membership.

`list_studio_members` only returns admin members.

### Usage

    nimblestudio_list_studio_members(maxResults, nextToken, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_list_studio_members_:_maxResults">maxResults</code></td>
<td><p>The max number of results to return in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_list_studio_members_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_list_studio_members_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      members = list(
        list(
          identityStoreId = "string",
          persona = "ADMINISTRATOR",
          principalId = "string",
          sid = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_studio_members(
      maxResults = 123,
      nextToken = "string",
      studioId = "string"
    )
