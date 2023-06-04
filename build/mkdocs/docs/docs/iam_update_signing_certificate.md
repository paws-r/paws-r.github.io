<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_signing_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the status of the specified user signing certificate from active to disabled, or vice versa

### Description

Changes the status of the specified user signing certificate from active
to disabled, or vice versa. This operation can be used to disable an IAM
user's signing certificate as part of a certificate rotation work flow.

If the `UserName` field is not specified, the user name is determined
implicitly based on the Amazon Web Services access key ID used to sign
the request. This operation works for access keys under the Amazon Web
Services account. Consequently, you can use this operation to manage
Amazon Web Services account root user credentials even if the Amazon Web
Services account has no associated users.

### Usage

    iam_update_signing_certificate(UserName, CertificateId, Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_update_signing_certificate_:_UserName">UserName</code></td>
<td><p>The name of the IAM user the signing certificate belongs to.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_update_signing_certificate_:_CertificateId">CertificateId</code></td>
<td><p>[required] The ID of the signing certificate you want to
update.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that can consist of any upper or lowercased letter or
digit.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_update_signing_certificate_:_Status">Status</code></td>
<td><p>[required] The status you want to assign to the certificate.
<code>Active</code> means that the certificate can be used for
programmatic calls to Amazon Web Services <code>Inactive</code> means
that the certificate cannot be used.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_signing_certificate(
      UserName = "string",
      CertificateId = "string",
      Status = "Active"|"Inactive"
    )

### Examples

    ## Not run: 
    # The following command changes the status of a signing certificate for a
    # user named Bob to Inactive.
    svc$update_signing_certificate(
      CertificateId = "TA7SMP42TDN5Z26OBPJE7EXAMPLE",
      Status = "Inactive",
      UserName = "Bob"
    )

    ## End(Not run)
