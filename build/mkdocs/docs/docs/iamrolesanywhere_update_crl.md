<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_update_crl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the certificate revocation list (CRL)

### Description

Updates the certificate revocation list (CRL). A CRL is a list of
certificates that have been revoked by the issuing certificate authority
(CA). IAM Roles Anywhere validates against the CRL before issuing
credentials.

**Required permissions:** `rolesanywhere:UpdateCrl`.

### Usage

    iamrolesanywhere_update_crl(crlData, crlId, name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iamrolesanywhere_update_crl_:_crlData">crlData</code></td>
<td><p>The x509 v3 specified certificate revocation list (CRL).</p></td>
</tr>
<tr class="even">
<td><code id="iamrolesanywhere_update_crl_:_crlId">crlId</code></td>
<td><p>[required] The unique identifier of the certificate revocation
list (CRL).</p></td>
</tr>
<tr class="odd">
<td><code id="iamrolesanywhere_update_crl_:_name">name</code></td>
<td><p>The name of the Crl.</p></td>
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

    svc$update_crl(
      crlData = raw,
      crlId = "string",
      name = "string"
    )
