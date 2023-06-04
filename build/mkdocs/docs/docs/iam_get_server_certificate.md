<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_server_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the specified server certificate stored in IAM

### Description

Retrieves information about the specified server certificate stored in
IAM.

For more information about working with server certificates, see
[Working with server
certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
in the *IAM User Guide*. This topic includes a list of Amazon Web
Services services that can use the server certificates that you manage
with IAM.

### Usage

    iam_get_server_certificate(ServerCertificateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_get_server_certificate_:_ServerCertificateName">ServerCertificateName</code></td>
<td><p>[required] The name of the server certificate you want to
retrieve information about.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServerCertificate = list(
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
        CertificateBody = "string",
        CertificateChain = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_server_certificate(
      ServerCertificateName = "string"
    )
