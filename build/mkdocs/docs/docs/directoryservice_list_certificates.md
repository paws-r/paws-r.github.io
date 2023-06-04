<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_list_certificates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For the specified directory, lists all the certificates registered for a secure LDAP or client certificate authentication

### Description

For the specified directory, lists all the certificates registered for a
secure LDAP or client certificate authentication.

### Usage

    directoryservice_list_certificates(DirectoryId, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_list_certificates_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_list_certificates_:_NextToken">NextToken</code></td>
<td><p>A token for requesting another page of certificates if the
<code>NextToken</code> response element indicates that more certificates
are available. Use the value of the returned <code>NextToken</code>
element in your request until the token comes back as <code>null</code>.
Pass <code>null</code> if this is the first call.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_list_certificates_:_Limit">Limit</code></td>
<td><p>The number of items that should show up on one page</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      CertificatesInfo = list(
        list(
          CertificateId = "string",
          CommonName = "string",
          State = "Registering"|"Registered"|"RegisterFailed"|"Deregistering"|"Deregistered"|"DeregisterFailed",
          ExpiryDateTime = as.POSIXct(
            "2015-01-01"
          ),
          Type = "ClientCertAuth"|"ClientLDAPS"
        )
      )
    )

### Request syntax

    svc$list_certificates(
      DirectoryId = "string",
      NextToken = "string",
      Limit = 123
    )
