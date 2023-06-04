<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_create_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Grants one or more permissions on a private CA to the Certificate Manager (ACM) service principal (acm

### Description

Grants one or more permissions on a private CA to the Certificate
Manager (ACM) service principal (`acm.amazonaws.com`). These permissions
allow ACM to issue and renew ACM certificates that reside in the same
Amazon Web Services account as the CA.

You can list current permissions with the `list_permissions` action and
revoke them with the `delete_permission` action.

**About Permissions**

-   If the private CA and the certificates it issues reside in the same
    account, you can use `create_permission` to grant permissions for
    ACM to carry out automatic certificate renewals.

-   For automatic certificate renewal to succeed, the ACM service
    principal needs permissions to create, retrieve, and list
    certificates.

-   If the private CA and the ACM certificates reside in different
    accounts, then permissions cannot be used to enable automatic
    renewals. Instead, the ACM certificate owner must set up a
    resource-based policy to enable cross-account issuance and renewals.
    For more information, see [Using a Resource Based Policy with Amazon
    Web Services Private
    CA](https://docs.aws.amazon.com/privateca/latest/userguide/pca-rbp.html).

### Usage

    acmpca_create_permission(CertificateAuthorityArn, Principal,
      SourceAccount, Actions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_create_permission_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the CA that grants
the permissions. You can find the ARN by calling the
<code>list_certificate_authorities</code> action. This must have the
following form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code>.</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_create_permission_:_Principal">Principal</code></td>
<td><p>[required] The Amazon Web Services service or identity that
receives the permission. At this time, the only valid principal is
<code>acm.amazonaws.com</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_create_permission_:_SourceAccount">SourceAccount</code></td>
<td><p>The ID of the calling account.</p></td>
</tr>
<tr class="even">
<td><code id="acmpca_create_permission_:_Actions">Actions</code></td>
<td><p>[required] The actions that the specified Amazon Web Services
service principal can use. These include <code>issue_certificate</code>,
<code>get_certificate</code>, and
<code>list_permissions</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_permission(
      CertificateAuthorityArn = "string",
      Principal = "string",
      SourceAccount = "string",
      Actions = list(
        "IssueCertificate"|"GetCertificate"|"ListPermissions"
      )
    )
