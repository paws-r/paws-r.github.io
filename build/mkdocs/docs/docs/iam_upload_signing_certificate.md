<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_upload_signing_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uploads an X

### Description

Uploads an X.509 signing certificate and associates it with the
specified IAM user. Some Amazon Web Services services require you to use
certificates to validate requests that are signed with a corresponding
private key. When you upload the certificate, its default status is
`Active`.

For information about when you would use an X.509 signing certificate,
see [Managing server certificates in
IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
in the *IAM User Guide*.

If the `UserName` is not specified, the IAM user name is determined
implicitly based on the Amazon Web Services access key ID used to sign
the request. This operation works for access keys under the Amazon Web
Services account. Consequently, you can use this operation to manage
Amazon Web Services account root user credentials even if the Amazon Web
Services account has no associated users.

Because the body of an X.509 certificate can be large, you should use
POST rather than GET when calling `upload_signing_certificate`. For
information about setting up signatures and authorization through the
API, see [Signing Amazon Web Services API
requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)
in the *Amazon Web Services General Reference*. For general information
about using the Query API with IAM, see [Making query
requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html)
in the *IAM User Guide*.

### Usage

    iam_upload_signing_certificate(UserName, CertificateBody)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_upload_signing_certificate_:_UserName">UserName</code></td>
<td><p>The name of the user the signing certificate is for.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_upload_signing_certificate_:_CertificateBody">CertificateBody</code></td>
<td><p>[required] The contents of the signing certificate.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
used to validate this parameter is a string of characters consisting of
the following:</p>
<ul>
<li><p>Any printable ASCII character ranging from the space character
(<code>U+0020</code>) through the end of the ASCII character
range</p></li>
<li><p>The printable characters in the Basic Latin and Latin-1
Supplement character set (through <code
style="white-space: pre;">⁠U+00FF⁠</code>)</p></li>
<li><p>The special characters tab (<code>U+0009</code>), line feed
(<code style="white-space: pre;">⁠U+000A⁠</code>), and carriage return
(<code style="white-space: pre;">⁠U+000D⁠</code>)</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Certificate = list(
        UserName = "string",
        CertificateId = "string",
        CertificateBody = "string",
        Status = "Active"|"Inactive",
        UploadDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$upload_signing_certificate(
      UserName = "string",
      CertificateBody = "string"
    )

### Examples

    ## Not run: 
    # The following command uploads a signing certificate for the IAM user
    # named Bob.
    svc$upload_signing_certificate(
      CertificateBody = "-----BEGIN CERTIFICATE-----<certificate-body>-----END CERTIFICATE-----",
      UserName = "Bob"
    )

    ## End(Not run)
