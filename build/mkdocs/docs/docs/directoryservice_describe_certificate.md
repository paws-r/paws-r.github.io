<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays information about the certificate registered for secure LDAP or client certificate authentication

### Description

Displays information about the certificate registered for secure LDAP or
client certificate authentication.

### Usage

    directoryservice_describe_certificate(DirectoryId, CertificateId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_certificate_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_certificate_:_CertificateId">CertificateId</code></td>
<td><p>[required] The identifier of the certificate.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Certificate = list(
        CertificateId = "string",
        State = "Registering"|"Registered"|"RegisterFailed"|"Deregistering"|"Deregistered"|"DeregisterFailed",
        StateReason = "string",
        CommonName = "string",
        RegisteredDateTime = as.POSIXct(
          "2015-01-01"
        ),
        ExpiryDateTime = as.POSIXct(
          "2015-01-01"
        ),
        Type = "ClientCertAuth"|"ClientLDAPS",
        ClientCertAuthSettings = list(
          OCSPUrl = "string"
        )
      )
    )

### Request syntax

    svc$describe_certificate(
      DirectoryId = "string",
      CertificateId = "string"
    )
