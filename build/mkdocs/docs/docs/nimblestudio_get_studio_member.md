<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_get_studio_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a user's membership in a studio

### Description

Get a user's membership in a studio.

### Usage

    nimblestudio_get_studio_member(principalId, studioId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_get_studio_member_:_principalId">principalId</code></td>
<td><p>[required] The principal ID. This currently supports a IAM
Identity Center UserId.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_get_studio_member_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      member = list(
        identityStoreId = "string",
        persona = "ADMINISTRATOR",
        principalId = "string",
        sid = "string"
      )
    )

### Request syntax

    svc$get_studio_member(
      principalId = "string",
      studioId = "string"
    )
