<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_untag_server_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tags from the IAM server certificate

### Description

Removes the specified tags from the IAM server certificate. For more
information about tagging, see [Tagging IAM
resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html)
in the *IAM User Guide*.

For certificates in a Region supported by Certificate Manager (ACM), we
recommend that you don't use IAM server certificates. Instead, use ACM
to provision, manage, and deploy your server certificates. For more
information about IAM server certificates, [Working with server
certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
in the *IAM User Guide*.

### Usage

    iam_untag_server_certificate(ServerCertificateName, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_untag_server_certificate_:_ServerCertificateName">ServerCertificateName</code></td>
<td><p>[required] The name of the IAM server certificate from which you
want to remove tags.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_untag_server_certificate_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of key names as a simple array of strings. The
tags with matching keys are removed from the specified IAM server
certificate.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_server_certificate(
      ServerCertificateName = "string",
      TagKeys = list(
        "string"
      )
    )
