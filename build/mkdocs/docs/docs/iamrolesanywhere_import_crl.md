<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_import_crl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports the certificate revocation list (CRL)

### Description

Imports the certificate revocation list (CRL). A CRL is a list of
certificates that have been revoked by the issuing certificate Authority
(CA). IAM Roles Anywhere validates against the CRL before issuing
credentials.

**Required permissions:** `rolesanywhere:ImportCrl`.

### Usage

    iamrolesanywhere_import_crl(crlData, enabled, name, tags,
      trustAnchorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iamrolesanywhere_import_crl_:_crlData">crlData</code></td>
<td><p>[required] The x509 v3 specified certificate revocation list
(CRL).</p></td>
</tr>
<tr class="even">
<td><code id="iamrolesanywhere_import_crl_:_enabled">enabled</code></td>
<td><p>Specifies whether the certificate revocation list (CRL) is
enabled.</p></td>
</tr>
<tr class="odd">
<td><code id="iamrolesanywhere_import_crl_:_name">name</code></td>
<td><p>[required] The name of the certificate revocation list
(CRL).</p></td>
</tr>
<tr class="even">
<td><code id="iamrolesanywhere_import_crl_:_tags">tags</code></td>
<td><p>A list of tags to attach to the certificate revocation list
(CRL).</p></td>
</tr>
<tr class="odd">
<td><code
id="iamrolesanywhere_import_crl_:_trustAnchorArn">trustAnchorArn</code></td>
<td><p>[required] The ARN of the TrustAnchor the certificate revocation
list (CRL) will provide revocation for.</p></td>
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

    svc$import_crl(
      crlData = raw,
      enabled = TRUE|FALSE,
      name = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      trustAnchorArn = "string"
    )
