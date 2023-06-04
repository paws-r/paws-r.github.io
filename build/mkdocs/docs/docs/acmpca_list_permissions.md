<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_list_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all permissions on a private CA, if any, granted to the Certificate Manager (ACM) service principal (acm

### Description

List all permissions on a private CA, if any, granted to the Certificate
Manager (ACM) service principal (acm.amazonaws.com).

These permissions allow ACM to issue and renew ACM certificates that
reside in the same Amazon Web Services account as the CA.

Permissions can be granted with the `create_permission` action and
revoked with the `delete_permission` action.

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

    acmpca_list_permissions(CertificateAuthorityArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_list_permissions_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the private CA to
inspect. You can find the ARN by calling the
<code>list_certificate_authorities</code> action. This must be of the
form:
<code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code>
You can get a private CA's ARN by running the
<code>list_certificate_authorities</code> action.</p></td>
</tr>
<tr class="even">
<td><code id="acmpca_list_permissions_:_NextToken">NextToken</code></td>
<td><p>When paginating results, use this parameter in a subsequent
request after you receive a response with truncated results. Set it to
the value of <strong>NextToken</strong> from the response you just
received.</p></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_list_permissions_:_MaxResults">MaxResults</code></td>
<td><p>When paginating results, use this parameter to specify the
maximum number of items to return in the response. If additional items
exist beyond the number you specify, the <strong>NextToken</strong>
element is sent in the response. Use this <strong>NextToken</strong>
value in a subsequent request to retrieve additional items.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Permissions = list(
        list(
          CertificateAuthorityArn = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Principal = "string",
          SourceAccount = "string",
          Actions = list(
            "IssueCertificate"|"GetCertificate"|"ListPermissions"
          ),
          Policy = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_permissions(
      CertificateAuthorityArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
