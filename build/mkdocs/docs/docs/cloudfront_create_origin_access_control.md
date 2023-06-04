<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_origin_access_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new origin access control in CloudFront

### Description

Creates a new origin access control in CloudFront. After you create an
origin access control, you can add it to an origin in a CloudFront
distribution so that CloudFront sends authenticated (signed) requests to
the origin.

This makes it possible to block public access to the origin, allowing
viewers (users) to access the origin's content only through CloudFront.

For more information about using a CloudFront origin access control, see
[Restricting access to an Amazon Web Services
origin](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-origin.html)
in the *Amazon CloudFront Developer Guide*.

### Usage

    cloudfront_create_origin_access_control(OriginAccessControlConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_origin_access_control_:_OriginAccessControlConfig">OriginAccessControlConfig</code></td>
<td><p>[required] Contains the origin access control.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OriginAccessControl = list(
        Id = "string",
        OriginAccessControlConfig = list(
          Name = "string",
          Description = "string",
          SigningProtocol = "sigv4",
          SigningBehavior = "never"|"always"|"no-override",
          OriginAccessControlOriginType = "s3"|"mediastore"
        )
      ),
      Location = "string",
      ETag = "string"
    )

### Request syntax

    svc$create_origin_access_control(
      OriginAccessControlConfig = list(
        Name = "string",
        Description = "string",
        SigningProtocol = "sigv4",
        SigningBehavior = "never"|"always"|"no-override",
        OriginAccessControlOriginType = "s3"|"mediastore"
      )
    )
