<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_modify_certificate_based_auth_properties</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the properties of the certificate-based authentication you want to use with your WorkSpaces

### Description

Modifies the properties of the certificate-based authentication you want
to use with your WorkSpaces.

### Usage

    workspaces_modify_certificate_based_auth_properties(ResourceId,
      CertificateBasedAuthProperties, PropertiesToDelete)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_modify_certificate_based_auth_properties_:_ResourceId">ResourceId</code></td>
<td><p>[required] The resource identifiers, in the form of directory
IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_modify_certificate_based_auth_properties_:_CertificateBasedAuthProperties">CertificateBasedAuthProperties</code></td>
<td><p>The properties of the certificate-based authentication.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_modify_certificate_based_auth_properties_:_PropertiesToDelete">PropertiesToDelete</code></td>
<td><p>The properties of the certificate-based authentication you want
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_certificate_based_auth_properties(
      ResourceId = "string",
      CertificateBasedAuthProperties = list(
        Status = "DISABLED"|"ENABLED",
        CertificateAuthorityArn = "string"
      ),
      PropertiesToDelete = list(
        "CERTIFICATE_BASED_AUTH_PROPERTIES_CERTIFICATE_AUTHORITY_ARN"
      )
    )
