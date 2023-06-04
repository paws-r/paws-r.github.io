<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_get_trust_store_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the trust store certificate

### Description

Gets the trust store certificate.

### Usage

    workspacesweb_get_trust_store_certificate(thumbprint, trustStoreArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_get_trust_store_certificate_:_thumbprint">thumbprint</code></td>
<td><p>[required] The thumbprint of the trust store
certificate.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_get_trust_store_certificate_:_trustStoreArn">trustStoreArn</code></td>
<td><p>[required] The ARN of the trust store certificate.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      certificate = list(
        body = raw,
        issuer = "string",
        notValidAfter = as.POSIXct(
          "2015-01-01"
        ),
        notValidBefore = as.POSIXct(
          "2015-01-01"
        ),
        subject = "string",
        thumbprint = "string"
      ),
      trustStoreArn = "string"
    )

### Request syntax

    svc$get_trust_store_certificate(
      thumbprint = "string",
      trustStoreArn = "string"
    )
