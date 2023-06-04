<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_key_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a key group that you can use with CloudFront signed URLs and signed cookies

### Description

Creates a key group that you can use with [CloudFront signed URLs and
signed
cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html).

To create a key group, you must specify at least one public key for the
key group. After you create a key group, you can reference it from one
or more cache behaviors. When you reference a key group in a cache
behavior, CloudFront requires signed URLs or signed cookies for all
requests that match the cache behavior. The URLs or cookies must be
signed with a private key whose corresponding public key is in the key
group. The signed URL or cookie contains information about which public
key CloudFront should use to verify the signature. For more information,
see [Serving private
content](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html)
in the *Amazon CloudFront Developer Guide*.

### Usage

    cloudfront_create_key_group(KeyGroupConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_key_group_:_KeyGroupConfig">KeyGroupConfig</code></td>
<td><p>[required] A key group configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyGroup = list(
        Id = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        KeyGroupConfig = list(
          Name = "string",
          Items = list(
            "string"
          ),
          Comment = "string"
        )
      ),
      Location = "string",
      ETag = "string"
    )

### Request syntax

    svc$create_key_group(
      KeyGroupConfig = list(
        Name = "string",
        Items = list(
          "string"
        ),
        Comment = "string"
      )
    )
