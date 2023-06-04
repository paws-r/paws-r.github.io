<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_untag_certificate_authority</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove one or more tags from your private CA

### Description

Remove one or more tags from your private CA. A tag consists of a
key-value pair. If you do not specify the value portion of the tag when
calling this action, the tag will be removed regardless of value. If you
specify a value, the tag is removed only if it is associated with the
specified value. To add tags to a private CA, use the
`tag_certificate_authority`. Call the `list_tags` action to see what
tags are associated with your CA.

### Usage

    acmpca_untag_certificate_authority(CertificateAuthorityArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_untag_certificate_authority_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that was returned when
you called <code>create_certificate_authority</code>. This must be of
the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code></p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_untag_certificate_authority_:_Tags">Tags</code></td>
<td><p>[required] List of tags to be removed from the CA.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_certificate_authority(
      CertificateAuthorityArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
