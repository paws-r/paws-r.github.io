<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_deregister_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes from the system the certificate that was registered for secure LDAP or client certificate authentication

### Description

Deletes from the system the certificate that was registered for secure
LDAP or client certificate authentication.

### Usage

    directoryservice_deregister_certificate(DirectoryId, CertificateId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_deregister_certificate_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_deregister_certificate_:_CertificateId">CertificateId</code></td>
<td><p>[required] The identifier of the certificate.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_certificate(
      DirectoryId = "string",
      CertificateId = "string"
    )
