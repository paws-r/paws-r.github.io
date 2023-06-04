<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_create_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a profile, a list of the roles that Roles Anywhere service is trusted to assume

### Description

Creates a *profile*, a list of the roles that Roles Anywhere service is
trusted to assume. You use profiles to intersect permissions with IAM
managed policies.

**Required permissions:** `rolesanywhere:CreateProfile`.

### Usage

    iamrolesanywhere_create_profile(durationSeconds, enabled,
      managedPolicyArns, name, requireInstanceProperties, roleArns,
      sessionPolicy, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iamrolesanywhere_create_profile_:_durationSeconds">durationSeconds</code></td>
<td><p>The number of seconds the vended session credentials are valid
for.</p></td>
</tr>
<tr class="even">
<td><code
id="iamrolesanywhere_create_profile_:_enabled">enabled</code></td>
<td><p>Specifies whether the profile is enabled.</p></td>
</tr>
<tr class="odd">
<td><code
id="iamrolesanywhere_create_profile_:_managedPolicyArns">managedPolicyArns</code></td>
<td><p>A list of managed policy ARNs that apply to the vended session
credentials.</p></td>
</tr>
<tr class="even">
<td><code id="iamrolesanywhere_create_profile_:_name">name</code></td>
<td><p>[required] The name of the profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="iamrolesanywhere_create_profile_:_requireInstanceProperties">requireInstanceProperties</code></td>
<td><p>Specifies whether instance properties are required in temporary
credential requests with this profile.</p></td>
</tr>
<tr class="even">
<td><code
id="iamrolesanywhere_create_profile_:_roleArns">roleArns</code></td>
<td><p>[required] A list of IAM roles that this profile can assume in a
temporary credential request.</p></td>
</tr>
<tr class="odd">
<td><code
id="iamrolesanywhere_create_profile_:_sessionPolicy">sessionPolicy</code></td>
<td><p>A session policy that applies to the trust boundary of the vended
session credentials.</p></td>
</tr>
<tr class="even">
<td><code id="iamrolesanywhere_create_profile_:_tags">tags</code></td>
<td><p>The tags to attach to the profile.</p></td>
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

    svc$create_profile(
      durationSeconds = 123,
      enabled = TRUE|FALSE,
      managedPolicyArns = list(
        "string"
      ),
      name = "string",
      requireInstanceProperties = TRUE|FALSE,
      roleArns = list(
        "string"
      ),
      sessionPolicy = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
