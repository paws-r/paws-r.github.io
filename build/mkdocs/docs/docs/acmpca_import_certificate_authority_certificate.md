<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_import_certificate_authority_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports a signed private CA certificate into Amazon Web Services Private CA

### Description

Imports a signed private CA certificate into Amazon Web Services Private
CA. This action is used when you are using a chain of trust whose root
is located outside Amazon Web Services Private CA. Before you can call
this action, the following preparations must in place:

1.  In Amazon Web Services Private CA, call the
    `create_certificate_authority` action to create the private CA that
    you plan to back with the imported certificate.

2.  Call the `get_certificate_authority_csr` action to generate a
    certificate signing request (CSR).

3.  Sign the CSR using a root or intermediate CA hosted by either an
    on-premises PKI hierarchy or by a commercial CA.

4.  Create a certificate chain and copy the signed certificate and the
    certificate chain to your working directory.

Amazon Web Services Private CA supports three scenarios for installing a
CA certificate:

-   Installing a certificate for a root CA hosted by Amazon Web Services
    Private CA.

-   Installing a subordinate CA certificate whose parent authority is
    hosted by Amazon Web Services Private CA.

-   Installing a subordinate CA certificate whose parent authority is
    externally hosted.

The following additional requirements apply when you import a CA
certificate.

-   Only a self-signed certificate can be imported as a root CA.

-   A self-signed certificate cannot be imported as a subordinate CA.

-   Your certificate chain must not include the private CA certificate
    that you are importing.

-   Your root CA must be the last certificate in your chain. The
    subordinate certificate, if any, that your root CA signed must be
    next to last. The subordinate certificate signed by the preceding
    subordinate CA must come next, and so on until your chain is built.

-   The chain must be PEM-encoded.

-   The maximum allowed size of a certificate is 32 KB.

-   The maximum allowed size of a certificate chain is 2 MB.

*Enforcement of Critical Constraints*

Amazon Web Services Private CA allows the following extensions to be
marked critical in the imported CA certificate or chain.

-   Basic constraints (*must* be marked critical)

-   Subject alternative names

-   Key usage

-   Extended key usage

-   Authority key identifier

-   Subject key identifier

-   Issuer alternative name

-   Subject directory attributes

-   Subject information access

-   Certificate policies

-   Policy mappings

-   Inhibit anyPolicy

Amazon Web Services Private CA rejects the following extensions when
they are marked critical in an imported CA certificate or chain.

-   Name constraints

-   Policy constraints

-   CRL distribution points

-   Authority information access

-   Freshest CRL

-   Any other extension

### Usage

    acmpca_import_certificate_authority_certificate(CertificateAuthorityArn,
      Certificate, CertificateChain)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_import_certificate_authority_certificate_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that was returned when
you called <code>create_certificate_authority</code>. This must be of
the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code></p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_import_certificate_authority_certificate_:_Certificate">Certificate</code></td>
<td><p>[required] The PEM-encoded certificate for a private CA. This may
be a self-signed certificate in the case of a root CA, or it may be
signed by another CA that you control.</p></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_import_certificate_authority_certificate_:_CertificateChain">CertificateChain</code></td>
<td><p>A PEM-encoded file that contains all of your certificates, other
than the certificate you're importing, chaining up to your root CA. Your
Amazon Web Services Private CA-hosted or on-premises root certificate is
the last in the chain, and each certificate in the chain signs the one
preceding.</p>
<p>This parameter must be supplied when you import a subordinate CA.
When you import a root CA, there is no chain.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$import_certificate_authority_certificate(
      CertificateAuthorityArn = "string",
      Certificate = raw,
      CertificateChain = raw
    )
