<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_enable_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables temporary credential requests for a profile

### Description

Enables temporary credential requests for a profile.

**Required permissions:** `rolesanywhere:EnableProfile`.

### Usage

    iamrolesanywhere_enable_profile(profileId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iamrolesanywhere_enable_profile_:_profileId">profileId</code></td>
<td><p>[required] The unique identifier of the profile.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      profile = list(
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        createdBy = "string",
        durationSeconds = 123,
        enabled = TRUE|FALSE,
        managedPolicyArns = list(
          "string"
        ),
        name = "string",
        profileArn = "string",
        profileId = "string",
        requireInstanceProperties = TRUE|FALSE,
        roleArns = list(
          "string"
        ),
        sessionPolicy = "string",
        updatedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$enable_profile(
      profileId = "string"
    )
