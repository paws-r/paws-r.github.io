<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_delete_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a certificate and its associated private key

### Description

Deletes a certificate and its associated private key. If this action
succeeds, the certificate no longer appears in the list that can be
displayed by calling the `list_certificates` action or be retrieved by
calling the `get_certificate` action. The certificate will not be
available for use by Amazon Web Services services integrated with ACM.

You cannot delete an ACM certificate that is being used by another
Amazon Web Services service. To delete a certificate that is in use, the
certificate association must first be removed.

### Usage

    acm_delete_certificate(CertificateArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_delete_certificate_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] String that contains the ARN of the ACM certificate to
be deleted. This must be of the form:</p>
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

    svc$delete_certificate(
      CertificateArn = "string"
    )
