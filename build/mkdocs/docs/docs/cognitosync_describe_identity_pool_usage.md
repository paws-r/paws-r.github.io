<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_describe_identity_pool_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets usage details (for example, data storage) about a particular identity pool

### Description

Gets usage details (for example, data storage) about a particular
identity pool.

This API can only be called with developer credentials. You cannot call
this API with the temporary user credentials provided by Cognito
Identity.

### Usage

    cognitosync_describe_identity_pool_usage(IdentityPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_describe_identity_pool_usage_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityPoolUsage = list(
        IdentityPoolId = "string",
        SyncSessionsCount = 123,
        DataStorage = 123,
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_identity_pool_usage(
      IdentityPoolId = "string"
    )
