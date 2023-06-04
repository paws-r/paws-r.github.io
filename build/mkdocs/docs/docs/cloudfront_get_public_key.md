<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_public_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a public key

### Description

Gets a public key.

### Usage

    cloudfront_get_public_key(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_get_public_key_:_Id">Id</code></td>
<td><p>[required] The identifier of the public key you are
getting.</p></td>
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

    svc$get_public_key(
      Id = "string"
    )
