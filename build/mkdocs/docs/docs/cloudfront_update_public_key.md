<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_public_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update public key information

### Description

Update public key information. Note that the only value you can change
is the comment.

### Usage

    cloudfront_update_public_key(PublicKeyConfig, Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_update_public_key_:_PublicKeyConfig">PublicKeyConfig</code></td>
<td><p>[required] A public key configuration.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_update_public_key_:_Id">Id</code></td>
<td><p>[required] The identifier of the public key that you are
updating.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_public_key_:_IfMatch">IfMatch</code></td>
<td><p>The value of the <code>ETag</code> header that you received when
retrieving the public key to update. For example:
<code>E2QWRUHAPOMQZL</code>.</p></td>
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
      ETag = "string"
    )

### Request syntax

    svc$update_public_key(
      PublicKeyConfig = list(
        CallerReference = "string",
        Name = "string",
        EncodedKey = "string",
        Comment = "string"
      ),
      Id = "string",
      IfMatch = "string"
    )
