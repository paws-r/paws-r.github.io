<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_create_studio</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new studio

### Description

Create a new studio.

When creating a studio, two IAM roles must be provided: the admin role
and the user role. These roles are assumed by your users when they log
in to the Nimble Studio portal.

The user role must have the `AmazonNimbleStudio-StudioUser` managed
policy attached for the portal to function properly.

The admin role must have the `AmazonNimbleStudio-StudioAdmin` managed
policy attached for the portal to function properly.

You may optionally specify a KMS key in the
`StudioEncryptionConfiguration`.

In Nimble Studio, resource names, descriptions, initialization scripts,
and other data you provide are always encrypted at rest using an KMS
key. By default, this key is owned by Amazon Web Services and managed on
your behalf. You may provide your own KMS key when calling
`create_studio` to encrypt this data using a key you own and manage.

When providing an KMS key during studio creation, Nimble Studio creates
KMS grants in your account to provide your studio user and admin roles
access to these KMS keys.

If you delete this grant, the studio will no longer be accessible to
your portal users.

If you delete the studio KMS key, your studio will no longer be
accessible.

### Usage

    nimblestudio_create_studio(adminRoleArn, clientToken, displayName,
      studioEncryptionConfiguration, studioName, tags, userRoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_create_studio_:_adminRoleArn">adminRoleArn</code></td>
<td><p>[required] The IAM role that studio admins will assume when
logging in to the Nimble Studio portal.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_studio_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_studio_:_displayName">displayName</code></td>
<td><p>[required] A friendly name for the studio.</p></td>
</tr>
<tr class="even">
<td><code
id="nimblestudio_create_studio_:_studioEncryptionConfiguration">studioEncryptionConfiguration</code></td>
<td><p>The studio encryption configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_studio_:_studioName">studioName</code></td>
<td><p>[required] The studio name that is used in the URL of the Nimble
Studio portal when accessed by Nimble Studio users.</p></td>
</tr>
<tr class="even">
<td><code id="nimblestudio_create_studio_:_tags">tags</code></td>
<td><p>A collection of labels, in the form of key-value pairs, that
apply to this resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="nimblestudio_create_studio_:_userRoleArn">userRoleArn</code></td>
<td><p>[required] The IAM role that studio users will assume when
logging in to the Nimble Studio portal.</p></td>
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

    svc$create_studio(
      adminRoleArn = "string",
      clientToken = "string",
      displayName = "string",
      studioEncryptionConfiguration = list(
        keyArn = "string",
        keyType = "AWS_OWNED_KEY"|"CUSTOMER_MANAGED_KEY"
      ),
      studioName = "string",
      tags = list(
        "string"
      ),
      userRoleArn = "string"
    )
