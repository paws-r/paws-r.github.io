<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_cloud_front_origin_access_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new origin access identity

### Description

Creates a new origin access identity. If you're using Amazon S3 for your
origin, you can use an origin access identity to require users to access
your content using a CloudFront URL instead of the Amazon S3 URL. For
more information about how to use origin access identities, see [Serving
Private Content through
CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
in the *Amazon CloudFront Developer Guide*.

### Usage

    cloudfront_create_cloud_front_origin_access_identity(
      CloudFrontOriginAccessIdentityConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_cloud_front_origin_access_identity_:_CloudFrontOriginAccessIdentityConfig">CloudFrontOriginAccessIdentityConfig</code></td>
<td><p>[required] The current configuration information for the
identity.</p></td>
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
      Location = "string",
      ETag = "string"
    )

### Request syntax

    svc$create_cloud_front_origin_access_identity(
      CloudFrontOriginAccessIdentityConfig = list(
        CallerReference = "string",
        Comment = "string"
      )
    )
