<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_server_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified server certificate

### Description

Deletes the specified server certificate.

For more information about working with server certificates, see
[Working with server
certificates](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html)
in the *IAM User Guide*. This topic also includes a list of Amazon Web
Services services that can use the server certificates that you manage
with IAM.

If you are using a server certificate with Elastic Load Balancing,
deleting the certificate could have implications for your application.
If Elastic Load Balancing doesn't detect the deletion of bound
certificates, it may continue to use the certificates. This could cause
Elastic Load Balancing to stop accepting traffic. We recommend that you
remove the reference to the certificate from Elastic Load Balancing
before using this command to delete the certificate. For more
information, see
[DeleteLoadBalancerListeners](https://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DeleteLoadBalancerListeners.html)
in the *Elastic Load Balancing API Reference*.

### Usage

    iam_delete_server_certificate(ServerCertificateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_delete_server_certificate_:_ServerCertificateName">ServerCertificateName</code></td>
<td><p>[required] The name of the server certificate you want to
delete.</p>
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

    svc$delete_server_certificate(
      ServerCertificateName = "string"
    )
