<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_delete_launch_profile_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a user from launch profile membership

### Description

Delete a user from launch profile membership.

### Usage

    nimblestudio_delete_launch_profile_member(clientToken, launchProfileId,
      principalId, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_delete_launch_profile_member_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_delete_launch_profile_member_:_launchProfileId">launchProfileId</code></td>
<td><p>[required] The ID of the launch profile used to control access
from the streaming session.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_delete_launch_profile_member_:_principalId">principalId</code></td>
<td><p>[required] The principal ID. This currently supports a IAM
Identity Center UserId.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_delete_launch_profile_member_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_launch_profile_member(
      clientToken = "string",
      launchProfileId = "string",
      principalId = "string",
      studioId = "string"
    )
