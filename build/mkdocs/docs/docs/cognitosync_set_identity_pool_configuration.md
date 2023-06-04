<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_set_identity_pool_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the necessary configuration for push sync

### Description

Sets the necessary configuration for push sync.

This API can only be called with developer credentials. You cannot call
this API with the temporary user credentials provided by Cognito
Identity.

### Usage

    cognitosync_set_identity_pool_configuration(IdentityPoolId, PushSync,
      CognitoStreams)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_set_identity_pool_configuration_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. This is the ID of the pool to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_set_identity_pool_configuration_:_PushSync">PushSync</code></td>
<td><p>Options to apply to this identity pool for push
synchronization.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_set_identity_pool_configuration_:_CognitoStreams">CognitoStreams</code></td>
<td><p>Options to apply to this identity pool for Amazon Cognito
streams.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityPoolId = "string",
      PushSync = list(
        ApplicationArns = list(
          "string"
        ),
        RoleArn = "string"
      ),
      CognitoStreams = list(
        StreamName = "string",
        RoleArn = "string",
        StreamingStatus = "ENABLED"|"DISABLED"
      )
    )

### Request syntax

    svc$set_identity_pool_configuration(
      IdentityPoolId = "string",
      PushSync = list(
        ApplicationArns = list(
          "string"
        ),
        RoleArn = "string"
      ),
      CognitoStreams = list(
        StreamName = "string",
        RoleArn = "string",
        StreamingStatus = "ENABLED"|"DISABLED"
      )
    )
