<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_list_launch_profile_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get all users in a given launch profile membership

### Description

Get all users in a given launch profile membership.

### Usage

    nimblestudio_list_launch_profile_members(launchProfileId, maxResults,
      nextToken, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_list_launch_profile_members_:_launchProfileId">launchProfileId</code></td>
<td><p>[required] The ID of the launch profile used to control access
from the streaming session.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_list_launch_profile_members_:_maxResults">maxResults</code></td>
<td><p>The max number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_list_launch_profile_members_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_list_launch_profile_members_:_studioId">studioId</code></td>
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
          persona = "USER",
          principalId = "string",
          sid = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_launch_profile_members(
      launchProfileId = "string",
      maxResults = 123,
      nextToken = "string",
      studioId = "string"
    )
