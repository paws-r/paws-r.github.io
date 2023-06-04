<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_update_directory_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified Directory Config object in AppStream 2

### Description

Updates the specified Directory Config object in AppStream 2.0. This
object includes the configuration information required to join fleets
and image builders to Microsoft Active Directory domains.

### Usage

    appstream_update_directory_config(DirectoryName,
      OrganizationalUnitDistinguishedNames, ServiceAccountCredentials,
      CertificateBasedAuthProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_update_directory_config_:_DirectoryName">DirectoryName</code></td>
<td><p>[required] The name of the Directory Config object.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_directory_config_:_OrganizationalUnitDistinguishedNames">OrganizationalUnitDistinguishedNames</code></td>
<td><p>The distinguished names of the organizational units for computer
accounts.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_directory_config_:_ServiceAccountCredentials">ServiceAccountCredentials</code></td>
<td><p>The credentials for the service account used by the fleet or
image builder to connect to the directory.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_directory_config_:_CertificateBasedAuthProperties">CertificateBasedAuthProperties</code></td>
<td><p>The certificate-based authentication properties used to
authenticate SAML 2.0 Identity Provider (IdP) user identities to Active
Directory domain-joined streaming instances. Fallback is turned on by
default when certificate-based authentication is
<strong>Enabled</strong> . Fallback allows users to log in using their
AD domain password if certificate-based authentication is unsuccessful,
or to unlock a desktop lock screen.
<strong>Enabled_no_directory_login_fallback</strong> enables
certificate-based authentication, but does not allow users to log in
using their AD domain password. Users will be disconnected to
re-authenticate using certificates.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DirectoryConfig = list(
        DirectoryName = "string",
        OrganizationalUnitDistinguishedNames = list(
          "string"
        ),
        ServiceAccountCredentials = list(
          AccountName = "string",
          AccountPassword = "string"
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        CertificateBasedAuthProperties = list(
          Status = "DISABLED"|"ENABLED"|"ENABLED_NO_DIRECTORY_LOGIN_FALLBACK",
          CertificateAuthorityArn = "string"
        )
      )
    )

### Request syntax

    svc$update_directory_config(
      DirectoryName = "string",
      OrganizationalUnitDistinguishedNames = list(
        "string"
      ),
      ServiceAccountCredentials = list(
        AccountName = "string",
        AccountPassword = "string"
      ),
      CertificateBasedAuthProperties = list(
        Status = "DISABLED"|"ENABLED"|"ENABLED_NO_DIRECTORY_LOGIN_FALLBACK",
        CertificateAuthorityArn = "string"
      )
    )
