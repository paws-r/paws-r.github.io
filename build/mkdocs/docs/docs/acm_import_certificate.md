<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_import_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports a certificate into Certificate Manager (ACM) to use with services that are integrated with ACM

### Description

Imports a certificate into Certificate Manager (ACM) to use with
services that are integrated with ACM. Note that [integrated
services](https://docs.aws.amazon.com/acm/latest/userguide/acm-services.html)
allow only certificate types and keys they support to be associated with
their resources. Further, their support differs depending on whether the
certificate is imported into IAM or into ACM. For more information, see
the documentation for each service. For more information about importing
certificates into ACM, see [Importing
Certificates](https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html)
in the *Certificate Manager User Guide*.

ACM does not provide [managed
renewal](https://docs.aws.amazon.com/acm/latest/userguide/managed-renewal.html)
for certificates that you import.

Note the following guidelines when importing third party certificates:

-   You must enter the private key that matches the certificate you are
    importing.

-   The private key must be unencrypted. You cannot import a private key
    that is protected by a password or a passphrase.

-   The private key must be no larger than 5 KB (5,120 bytes).

-   If the certificate you are importing is not self-signed, you must
    enter its certificate chain.

-   If a certificate chain is included, the issuer must be the subject
    of one of the certificates in the chain.

-   The certificate, private key, and certificate chain must be
    PEM-encoded.

-   The current time must be between the `⁠Not Before⁠` and `⁠Not After⁠`
    certificate fields.

-   The `Issuer` field must not be empty.

-   The OCSP authority URL, if present, must not exceed 1000 characters.

-   To import a new certificate, omit the `CertificateArn` argument.
    Include this argument only when you want to replace a previously
    imported certificate.

-   When you import a certificate by using the CLI, you must specify the
    certificate, the certificate chain, and the private key by their
    file names preceded by `⁠fileb://⁠`. For example, you can specify a
    certificate saved in the `⁠C:\\temp⁠` folder as
    `⁠fileb://C:\\temp\\certificate_to_import.pem⁠`. If you are making an
    HTTP or HTTPS Query request, include these arguments as BLOBs.

-   When you import a certificate by using an SDK, you must specify the
    certificate, the certificate chain, and the private key files in the
    manner required by the programming language you're using.

-   The cryptographic algorithm of an imported certificate must match
    the algorithm of the signing CA. For example, if the signing CA key
    type is RSA, then the certificate key type must also be RSA.

This operation returns the [Amazon Resource Name
(ARN)](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
of the imported certificate.

### Usage

    acm_import_certificate(CertificateArn, Certificate, PrivateKey,
      CertificateChain, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_import_certificate_:_CertificateArn">CertificateArn</code></td>
<td><p>The <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Name (ARN)</a> of an imported certificate to replace. To import
a new certificate, omit this field.</p></td>
</tr>
<tr class="even">
<td><code
id="acm_import_certificate_:_Certificate">Certificate</code></td>
<td><p>[required] The certificate to import.</p></td>
</tr>
<tr class="odd">
<td><code
id="acm_import_certificate_:_PrivateKey">PrivateKey</code></td>
<td><p>[required] The private key that matches the public key in the
certificate.</p></td>
</tr>
<tr class="even">
<td><code
id="acm_import_certificate_:_CertificateChain">CertificateChain</code></td>
<td><p>The PEM encoded certificate chain.</p></td>
</tr>
<tr class="odd">
<td><code id="acm_import_certificate_:_Tags">Tags</code></td>
<td><p>One or more resource tags to associate with the imported
certificate.</p>
<p>Note: You cannot apply tags when reimporting a certificate.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CertificateArn = "string"
    )

### Request syntax

    svc$import_certificate(
      CertificateArn = "string",
      Certificate = raw,
      PrivateKey = raw,
      CertificateChain = raw,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
