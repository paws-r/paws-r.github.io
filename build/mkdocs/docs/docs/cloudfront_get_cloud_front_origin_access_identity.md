<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_cloud_front_origin_access_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the information about an origin access identity

### Description

Get the information about an origin access identity.

### Usage

    cloudfront_get_cloud_front_origin_access_identity(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_get_cloud_front_origin_access_identity_:_Id">Id</code></td>
<td><p>[required] The identity's ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CloudFrontOriginAccessIdentity = list(
        Id = "string",
        S3CanonicalUserId = "string",
        CloudFrontOriginAccessIdentityConfig = list(
          CallerReference = "string",
          Comment = "string"
        )
      ),
      ETag = "string"
    )

### Request syntax

    svc$get_cloud_front_origin_access_identity(
      Id = "string"
    )
