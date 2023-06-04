<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_renew_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Renews an eligible ACM certificate

### Description

Renews an eligible ACM certificate. At this time, only exported private
certificates can be renewed with this operation. In order to renew your
Amazon Web Services Private CA certificates with ACM, you must first
[grant the ACM service principal permission to do
so](https://docs.aws.amazon.com/privateca/latest/userguide/). For more
information, see [Testing Managed
Renewal](https://docs.aws.amazon.com/acm/latest/userguide/) in the ACM
User Guide.

### Usage

    acm_renew_certificate(CertificateArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_renew_certificate_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] String that contains the ARN of the ACM certificate to
be renewed. This must be of the form:</p>
<p><code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code></p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$renew_certificate(
      CertificateArn = "string"
    )
