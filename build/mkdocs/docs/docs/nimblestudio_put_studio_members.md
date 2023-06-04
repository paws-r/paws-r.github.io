<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_put_studio_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add/update users with given persona to studio membership

### Description

Add/update users with given persona to studio membership.

### Usage

    nimblestudio_put_studio_members(clientToken, identityStoreId, members,
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
id="nimblestudio_put_studio_members_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_put_studio_members_:_identityStoreId">identityStoreId</code></td>
<td><p>[required] The ID of the identity store.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_put_studio_members_:_members">members</code></td>
<td><p>[required] A list of members.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_put_studio_members_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_studio_members(
      clientToken = "string",
      identityStoreId = "string",
      members = list(
        list(
          persona = "ADMINISTRATOR",
          principalId = "string"
        )
      ),
      studioId = "string"
    )
