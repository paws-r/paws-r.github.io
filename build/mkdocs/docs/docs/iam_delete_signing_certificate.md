<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_signing_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a signing certificate associated with the specified IAM user

### Description

Deletes a signing certificate associated with the specified IAM user.

If you do not specify a user name, IAM determines the user name
implicitly based on the Amazon Web Services access key ID signing the
request. This operation works for access keys under the Amazon Web
Services account. Consequently, you can use this operation to manage
Amazon Web Services account root user credentials even if the Amazon Web
Services account has no associated IAM users.

### Usage

    iam_delete_signing_certificate(UserName, CertificateId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_delete_signing_certificate_:_UserName">UserName</code></td>
<td><p>The name of the user the signing certificate belongs to.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_delete_signing_certificate_:_CertificateId">CertificateId</code></td>
<td><p>[required] The ID of the signing certificate to delete.</p>
<p>The format of this parameter, as described by its <a
href="https://en.wikipedia.org/wiki/Regex">regex</a> pattern, is a
string of characters that can be upper- or lower-cased letters or
digits.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_signing_certificate(
      UserName = "string",
      CertificateId = "string"
    )

### Examples

    ## Not run: 
    # The following command deletes the specified signing certificate for the
    # IAM user named Anika.
    svc$delete_signing_certificate(
      CertificateId = "TA7SMP42TDN5Z26OBPJE7EXAMPLE",
      UserName = "Anika"
    )

    ## End(Not run)
