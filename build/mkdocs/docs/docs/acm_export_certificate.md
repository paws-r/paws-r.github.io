<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_export_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports a private certificate issued by a private certificate authority (CA) for use anywhere

### Description

Exports a private certificate issued by a private certificate authority
(CA) for use anywhere. The exported file contains the certificate, the
certificate chain, and the encrypted private 2048-bit RSA key associated
with the public key that is embedded in the certificate. For security,
you must assign a passphrase for the private key when exporting it.

For information about exporting and formatting a certificate using the
ACM console or CLI, see [Export a Private
Certificate](https://docs.aws.amazon.com/acm/latest/userguide/).

### Usage

    acm_export_certificate(CertificateArn, Passphrase)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_export_certificate_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] An Amazon Resource Name (ARN) of the issued
certificate. This must be of the form:</p>
<p><code>arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012</code></p></td>
</tr>
<tr class="even">
<td><code
id="acm_export_certificate_:_Passphrase">Passphrase</code></td>
<td><p>[required] Passphrase to associate with the encrypted exported
private key.</p>
<p>When creating your passphrase, you can use any ASCII character except
#, $, or %.</p>
<p>If you want to later decrypt the private key, you must have the
passphrase. You can use the following OpenSSL command to decrypt a
private key. After entering the command, you are prompted for the
passphrase.</p>
<p><code
style="white-space: pre;">⁠openssl rsa -in encrypted_key.pem -out decrypted_key.pem⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Certificate = "string",
      CertificateChain = "string",
      PrivateKey = "string"
    )

### Request syntax

    svc$export_certificate(
      CertificateArn = "string",
      Passphrase = raw
    )
