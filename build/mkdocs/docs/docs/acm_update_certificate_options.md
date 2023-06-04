<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_update_certificate_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a certificate

### Description

Updates a certificate. Currently, you can use this function to specify
whether to opt in to or out of recording your certificate in a
certificate transparency log. For more information, see [Opting Out of
Certificate Transparency
Logging](https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency).

### Usage

    acm_update_certificate_options(CertificateArn, Options)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_update_certificate_options_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] ARN of the requested certificate to update. This must
be of the form:</p>
<p><code>arn:aws:acm:us-east-1:account:certificate/12345678-1234-1234-1234-123456789012 </code></p></td>
</tr>
<tr class="even">
<td><code
id="acm_update_certificate_options_:_Options">Options</code></td>
<td><p>[required] Use to update the options for your certificate.
Currently, you can specify whether to add your certificate to a
transparency log. Certificate transparency makes it possible to detect
SSL/TLS certificates that have been mistakenly or maliciously issued.
Certificates that have not been logged typically produce an error
message in a browser.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_certificate_options(
      CertificateArn = "string",
      Options = list(
        CertificateTransparencyLoggingPreference = "ENABLED"|"DISABLED"
      )
    )
