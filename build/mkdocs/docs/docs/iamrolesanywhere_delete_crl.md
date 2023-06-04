<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_delete_crl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a certificate revocation list (CRL)

### Description

Deletes a certificate revocation list (CRL).

**Required permissions:** `rolesanywhere:DeleteCrl`.

### Usage

    iamrolesanywhere_delete_crl(crlId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iamrolesanywhere_delete_crl_:_crlId">crlId</code></td>
<td><p>[required] The unique identifier of the certificate revocation
list (CRL).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      crl = list(
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        crlArn = "string",
        crlData = raw,
        crlId = "string",
        enabled = TRUE|FALSE,
        name = "string",
        trustAnchorArn = "string",
        updatedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$delete_crl(
      crlId = "string"
    )
