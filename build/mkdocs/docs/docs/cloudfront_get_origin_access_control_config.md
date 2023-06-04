<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_origin_access_control_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a CloudFront origin access control configuration

### Description

Gets a CloudFront origin access control configuration.

### Usage

    cloudfront_get_origin_access_control_config(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_get_origin_access_control_config_:_Id">Id</code></td>
<td><p>[required] The unique identifier of the origin access
control.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OriginAccessControlConfig = list(
        Name = "string",
        Description = "string",
        SigningProtocol = "sigv4",
        SigningBehavior = "never"|"always"|"no-override",
        OriginAccessControlOriginType = "s3"|"mediastore"
      ),
      ETag = "string"
    )

### Request syntax

    svc$get_origin_access_control_config(
      Id = "string"
    )
