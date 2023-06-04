<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_update_studio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a Studio resource

### Description

Update a Studio resource.

Currently, this operation only supports updating the displayName of your
studio.

### Usage

    nimblestudio_update_studio(adminRoleArn, clientToken, displayName,
      studioId, userRoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_update_studio_:_adminRoleArn">adminRoleArn</code></td>
<td><p>The IAM role that Studio Admins will assume when logging in to
the Nimble Studio portal.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_update_studio_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_update_studio_:_displayName">displayName</code></td>
<td><p>A friendly name for the studio.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_update_studio_:_studioId">studioId</code></td>
<td><p>[required] The studio ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_update_studio_:_userRoleArn">userRoleArn</code></td>
<td><p>The IAM role that Studio Users will assume when logging in to the
Nimble Studio portal.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      studio = list(
        adminRoleArn = "string",
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        displayName = "string",
        homeRegion = "string",
        ssoClientId = "string",
        state = "CREATE_IN_PROGRESS"|"READY"|"UPDATE_IN_PROGRESS"|"DELETE_IN_PROGRESS"|"DELETED"|"DELETE_FAILED"|"CREATE_FAILED"|"UPDATE_FAILED",
        statusCode = "STUDIO_CREATED"|"STUDIO_DELETED"|"STUDIO_UPDATED"|"STUDIO_CREATE_IN_PROGRESS"|"STUDIO_UPDATE_IN_PROGRESS"|"STUDIO_DELETE_IN_PROGRESS"|"STUDIO_WITH_LAUNCH_PROFILES_NOT_DELETED"|"STUDIO_WITH_STUDIO_COMPONENTS_NOT_DELETED"|"STUDIO_WITH_STREAMING_IMAGES_NOT_DELETED"|"AWS_SSO_NOT_ENABLED"|"AWS_SSO_ACCESS_DENIED"|"ROLE_NOT_OWNED_BY_STUDIO_OWNER"|"ROLE_COULD_NOT_BE_ASSUMED"|"INTERNAL_ERROR"|"ENCRYPTION_KEY_NOT_FOUND"|"ENCRYPTION_KEY_ACCESS_DENIED"|"AWS_SSO_CONFIGURATION_REPAIRED"|"AWS_SSO_CONFIGURATION_REPAIR_IN_PROGRESS"|"AWS_STS_REGION_DISABLED",
        statusMessage = "string",
        studioEncryptionConfiguration = list(
          keyArn = "string",
          keyType = "AWS_OWNED_KEY"|"CUSTOMER_MANAGED_KEY"
        ),
        studioId = "string",
        studioName = "string",
        studioUrl = "string",
        tags = list(
          "string"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        ),
        userRoleArn = "string"
      )
    )

### Request syntax

    svc$update_studio(
      adminRoleArn = "string",
      clientToken = "string",
      displayName = "string",
      studioId = "string",
      userRoleArn = "string"
    )
