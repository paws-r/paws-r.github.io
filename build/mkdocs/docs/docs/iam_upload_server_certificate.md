<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_upload_server_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uploads a server certificate entity for the Amazon Web Services account

### Description

Uploads a server certificate entity for the Amazon Web Services account.
The server certificate entity includes a public key certificate, a
private key, and an optional certificate chain, which should all be
PEM-encoded.

We recommend that you use [Certificate
Manager](https://docs.aws.amazon.com/acm/) to provision, manage, and
deploy your server certificates. With ACM you can request a certificate,
deploy it to Amazon Web Services resources, and let ACM handle
certificate renewals for you. Certificates provided by ACM are free. For
more information about using ACM, see the [Certificate Manager User
Guide](https://docs.aws.amazon.com/acm/latest/userguide/).

For more information about working with server certificates, see
[Working with server
certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
in the *IAM User Guide*. This topic includes a list of Amazon Web
Services services that can use the server certificates that you manage
with IAM.

For information about the number of server certificates you can upload,
see [IAM and STS
quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
in the *IAM User Guide*.

Because the body of the public key certificate, private key, and the
certificate chain can be large, you should use POST rather than GET when
calling `upload_server_certificate`. For information about setting up
signatures and authorization through the API, see [Signing Amazon Web
Services API
requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html)
in the *Amazon Web Services General Reference*. For general information
about using the Query API with IAM, see [Calling the API by making HTTP
query
requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html)
in the *IAM User Guide*.

### Usage

    iam_upload_server_certificate(Path, ServerCertificateName,
      CertificateBody, PrivateKey, CertificateChain, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_upload_server_certificate_:_Path">Path</code></td>
<td><p>The path for the server certificate. For more information about
paths, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
identifiers</a> in the <em>IAM User Guide</em>.</p>
<p>This parameter is optional. If it is not included, it defaults to a
slash (/). This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of either a forward slash (/) by itself or a
string that must begin and end with forward slashes. In addition, it can
contain any ASCII character from the ! (<code>U+0021</code>) through the
DEL character (<code style="white-space: pre;">⁠U+007F⁠</code>), including
most punctuation characters, digits, and upper and lowercased
letters.</p>
<p>If you are uploading a server certificate specifically for use with
Amazon CloudFront distributions, you must specify a path using the
<code>path</code> parameter. The path must begin with <code
style="white-space: pre;">⁠/cloudfront⁠</code> and must include a trailing
slash (for example, <code
style="white-space: pre;">⁠/cloudfront/test/⁠</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="iam_upload_server_certificate_:_ServerCertificateName">ServerCertificateName</code></td>
<td><p>[required] The name for the server certificate. Do not include
the path in this value. The name of the certificate cannot contain any
spaces.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_upload_server_certificate_:_CertificateBody">CertificateBody</code></td>
<td><p>[required] The contents of the public key certificate in
PEM-encoded format.</p>
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
<tr class="even">
<td><code
id="iam_upload_server_certificate_:_PrivateKey">PrivateKey</code></td>
<td><p>[required] The contents of the private key in PEM-encoded
format.</p>
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
<tr class="odd">
<td><code
id="iam_upload_server_certificate_:_CertificateChain">CertificateChain</code></td>
<td><p>The contents of the certificate chain. This is typically a
concatenation of the PEM-encoded public key certificates of the
chain.</p>
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
<tr class="even">
<td><code id="iam_upload_server_certificate_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the new IAM server
certificate resource. Each tag consists of a key name and an associated
value. For more information about tagging, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging
IAM resources</a> in the <em>IAM User Guide</em>.</p>
<p>If any one of the tags is invalid or if you exceed the allowed
maximum number of tags, then the entire request fails and the resource
is not created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServerCertificateMetadata = list(
        Path = "string",
        ServerCertificateName = "string",
        ServerCertificateId = "string",
        Arn = "string",
        UploadDate = as.POSIXct(
          "2015-01-01"
        ),
        Expiration = as.POSIXct(
          "2015-01-01"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$upload_server_certificate(
      Path = "string",
      ServerCertificateName = "string",
      CertificateBody = "string",
      PrivateKey = "string",
      CertificateChain = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following upload-server-certificate command uploads a server
    # certificate to your AWS account:
    svc$upload_server_certificate(
      CertificateBody = "-----BEGIN CERTIFICATE-----<a very long certificate te...",
      Path = "/company/servercerts/",
      PrivateKey = "-----BEGIN DSA PRIVATE KEY-----<a very long private key str...",
      ServerCertificateName = "ProdServerCert"
    )

    ## End(Not run)
