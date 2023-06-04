<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_public_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uploads a public key to CloudFront that you can use with signed URLs and signed cookies, or with field-level encryption

### Description

Uploads a public key to CloudFront that you can use with [signed URLs
and signed
cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html),
or with [field-level
encryption](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html).

### Usage

    cloudfront_create_public_key(PublicKeyConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_public_key_:_PublicKeyConfig">PublicKeyConfig</code></td>
<td><p>[required] A CloudFront public key configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PublicKey = list(
        Id = "string",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        PublicKeyConfig = list(
          CallerReference = "string",
          Name = "string",
          EncodedKey = "string",
          Comment = "string"
        )
      ),
      Location = "string",
      ETag = "string"
    )

### Request syntax

    svc$create_public_key(
      PublicKeyConfig = list(
        CallerReference = "string",
        Name = "string",
        EncodedKey = "string",
        Comment = "string"
      )
    )
