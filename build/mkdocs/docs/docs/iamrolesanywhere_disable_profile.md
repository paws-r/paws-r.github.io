<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_disable_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables a profile

### Description

Disables a profile. When disabled, temporary credential requests with
this profile fail.

**Required permissions:** `rolesanywhere:DisableProfile`.

### Usage

    iamrolesanywhere_disable_profile(profileId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iamrolesanywhere_disable_profile_:_profileId">profileId</code></td>
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

    svc$disable_profile(
      profileId = "string"
    )
