<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_get_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves an Amazon-issued certificate and its certificate chain

### Description

Retrieves an Amazon-issued certificate and its certificate chain. The
chain consists of the certificate of the issuing CA and the intermediate
certificates of any other subordinate CAs. All of the certificates are
base64 encoded. You can use
[OpenSSL](https://wiki.openssl.org/index.php/Command_Line_Utilities) to
decode the certificates and inspect individual fields.

### Usage

    acm_get_certificate(CertificateArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_get_certificate_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] String that contains a certificate ARN in the
following format:</p>
<p><code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code></p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Certificate = "string",
      CertificateChain = "string"
    )

### Request syntax

    svc$get_certificate(
      CertificateArn = "string"
    )
