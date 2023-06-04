<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_server_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name and/or the path of the specified server certificate stored in IAM

### Description

Updates the name and/or the path of the specified server certificate
stored in IAM.

For more information about working with server certificates, see
[Working with server
certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
in the *IAM User Guide*. This topic also includes a list of Amazon Web
Services services that can use the server certificates that you manage
with IAM.

You should understand the implications of changing a server
certificate's path or name. For more information, see [Renaming a server
certificate](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html#RenamingServerCerts)
in the *IAM User Guide*.

The person making the request (the principal), must have permission to
change the server certificate with the old name and the new name. For
example, to change the certificate named `ProductionCert` to `ProdCert`,
the principal must have a policy that allows them to update both
certificates. If the principal has permission to update the
`ProductionCert` group, but not the `ProdCert` certificate, then the
update fails. For more information about permissions, see [Access
management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html)
in the *IAM User Guide*.

### Usage

    iam_update_server_certificate(ServerCertificateName, NewPath,
      NewServerCertificateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_update_server_certificate_:_ServerCertificateName">ServerCertificateName</code></td>
<td><p>[required] The name of the server certificate that you want to
update.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_update_server_certificate_:_NewPath">NewPath</code></td>
<td><p>The new path for the server certificate. Include this only if you
are updating the server certificate's path.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of either a forward slash (/) by itself or a
string that must begin and end with forward slashes. In addition, it can
contain any ASCII character from the ! (<code>U+0021</code>) through the
DEL character (<code style="white-space: pre;">⁠U+007F⁠</code>), including
most punctuation characters, digits, and upper and lowercased
letters.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_update_server_certificate_:_NewServerCertificateName">NewServerCertificateName</code></td>
<td><p>The new name for the server certificate. Include this only if you
are updating the server certificate's name. The name of the certificate
cannot contain any spaces.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_server_certificate(
      ServerCertificateName = "string",
      NewPath = "string",
      NewServerCertificateName = "string"
    )
