<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_register_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers a certificate for a secure LDAP or client certificate authentication

### Description

Registers a certificate for a secure LDAP or client certificate
authentication.

### Usage

    directoryservice_register_certificate(DirectoryId, CertificateData,
      Type, ClientCertAuthSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_register_certificate_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_register_certificate_:_CertificateData">CertificateData</code></td>
<td><p>[required] The certificate PEM string that needs to be
registered.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_register_certificate_:_Type">Type</code></td>
<td><p>The function that the registered certificate performs. Valid
values include <code>ClientLDAPS</code> or <code>ClientCertAuth</code>.
The default value is <code>ClientLDAPS</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_register_certificate_:_ClientCertAuthSettings">ClientCertAuthSettings</code></td>
<td><p>A <code>ClientCertAuthSettings</code> object that contains client
certificate authentication settings.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CertificateId = "string"
    )

### Request syntax

    svc$register_certificate(
      DirectoryId = "string",
      CertificateData = "string",
      Type = "ClientCertAuth"|"ClientLDAPS",
      ClientCertAuthSettings = list(
        OCSPUrl = "string"
      )
    )
