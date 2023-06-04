<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_get_launch_profile_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a user persona in launch profile membership

### Description

Get a user persona in launch profile membership.

### Usage

    nimblestudio_get_launch_profile_member(launchProfileId, principalId,
      studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_get_launch_profile_member_:_launchProfileId">launchProfileId</code></td>
<td><p>[required] The ID of the launch profile used to control access
from the streaming session.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_get_launch_profile_member_:_principalId">principalId</code></td>
<td><p>[required] The principal ID. This currently supports a IAM
Identity Center UserId.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_get_launch_profile_member_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      member = list(
        identityStoreId = "string",
        persona = "USER",
        principalId = "string",
        sid = "string"
      )
    )

### Request syntax

    svc$get_launch_profile_member(
      launchProfileId = "string",
      principalId = "string",
      studioId = "string"
    )
