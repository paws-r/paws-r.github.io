<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_public_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove a public key you previously added to CloudFront

### Description

Remove a public key you previously added to CloudFront.

### Usage

    cloudfront_delete_public_key(Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudfront_delete_public_key_:_Id">Id</code></td>
<td><p>[required] The ID of the public key you want to remove from
CloudFront.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_delete_public_key_:_IfMatch">IfMatch</code></td>
<td><p>The value of the <code>ETag</code> header that you received when
retrieving the public key identity to delete. For example:
<code>E2QWRUHAPOMQZL</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_public_key(
      Id = "string",
      IfMatch = "string"
    )
