<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_describe_identity_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets usage information for an identity, including number of datasets and data usage

### Description

Gets usage information for an identity, including number of datasets and
data usage.

This API can be called with temporary user credentials provided by
Cognito Identity or with developer credentials.

### Usage

    cognitosync_describe_identity_usage(IdentityPoolId, IdentityId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_describe_identity_usage_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_describe_identity_usage_:_IdentityId">IdentityId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityUsage = list(
        IdentityId = "string",
        IdentityPoolId = "string",
        LastModifiedDate = as.POSIXct(
          "2015-01-01"
        ),
        DatasetCount = 123,
        DataStorage = 123
      )
    )

### Request syntax

    svc$describe_identity_usage(
      IdentityPoolId = "string",
      IdentityId = "string"
    )
