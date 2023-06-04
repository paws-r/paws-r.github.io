<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_origin_access_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a CloudFront origin access control

### Description

Updates a CloudFront origin access control.

### Usage

    cloudfront_update_origin_access_control(OriginAccessControlConfig, Id,
      IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_origin_access_control_:_OriginAccessControlConfig">OriginAccessControlConfig</code></td>
<td><p>[required] An origin access control.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_update_origin_access_control_:_Id">Id</code></td>
<td><p>[required] The unique identifier of the origin access control
that you are updating.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_origin_access_control_:_IfMatch">IfMatch</code></td>
<td><p>The current version (<code>ETag</code> value) of the origin
access control that you are updating.</p></td>
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
      ETag = "string"
    )

### Request syntax

    svc$update_origin_access_control(
      OriginAccessControlConfig = list(
        Name = "string",
        Description = "string",
        SigningProtocol = "sigv4",
        SigningBehavior = "never"|"always"|"no-override",
        OriginAccessControlOriginType = "s3"|"mediastore"
      ),
      Id = "string",
      IfMatch = "string"
    )
