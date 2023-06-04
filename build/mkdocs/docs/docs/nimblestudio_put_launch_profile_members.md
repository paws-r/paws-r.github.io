<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_put_launch_profile_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add/update users with given persona to launch profile membership

### Description

Add/update users with given persona to launch profile membership.

### Usage

    nimblestudio_put_launch_profile_members(clientToken, identityStoreId,
      launchProfileId, members, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_put_launch_profile_members_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_put_launch_profile_members_:_identityStoreId">identityStoreId</code></td>
<td><p>[required] The ID of the identity store.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_put_launch_profile_members_:_launchProfileId">launchProfileId</code></td>
<td><p>[required] The ID of the launch profile used to control access
from the streaming session.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_put_launch_profile_members_:_members">members</code></td>
<td><p>[required] A list of members.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_put_launch_profile_members_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_launch_profile_members(
      clientToken = "string",
      identityStoreId = "string",
      launchProfileId = "string",
      members = list(
        list(
          persona = "USER",
          principalId = "string"
        )
      ),
      studioId = "string"
    )
