<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_cloud_front_origin_access_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an origin access identity

### Description

Update an origin access identity.

### Usage

    cloudfront_update_cloud_front_origin_access_identity(
      CloudFrontOriginAccessIdentityConfig, Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_cloud_front_origin_access_identity_:_CloudFrontOriginAccessIdentityConfig">CloudFrontOriginAccessIdentityConfig</code></td>
<td><p>[required] The identity's configuration information.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_update_cloud_front_origin_access_identity_:_Id">Id</code></td>
<td><p>[required] The identity's id.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_cloud_front_origin_access_identity_:_IfMatch">IfMatch</code></td>
<td><p>The value of the <code>ETag</code> header that you received when
retrieving the identity's configuration. For example:
<code>E2QWRUHAPOMQZL</code>.</p></td>
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

    svc$update_cloud_front_origin_access_identity(
      CloudFrontOriginAccessIdentityConfig = list(
        CallerReference = "string",
        Comment = "string"
      ),
      Id = "string",
      IfMatch = "string"
    )
