<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_tag_certificate_authority</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to your private CA

### Description

Adds one or more tags to your private CA. Tags are labels that you can
use to identify and organize your Amazon Web Services resources. Each
tag consists of a key and an optional value. You specify the private CA
on input by its Amazon Resource Name (ARN). You specify the tag by using
a key-value pair. You can apply a tag to just one private CA if you want
to identify a specific characteristic of that CA, or you can apply the
same tag to multiple private CAs if you want to filter for a common
relationship among those CAs. To remove one or more tags, use the
`untag_certificate_authority` action. Call the `list_tags` action to see
what tags are associated with your CA.

To attach tags to a private CA during the creation procedure, a CA
administrator must first associate an inline IAM policy with the
`create_certificate_authority` action and explicitly allow tagging. For
more information, see [Attaching tags to a CA at the time of
creation](https://docs.aws.amazon.com/privateca/latest/userguide/auth-InlinePolicies.html#policy-tag-ca).

### Usage

    acmpca_tag_certificate_authority(CertificateAuthorityArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_tag_certificate_authority_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that was returned when
you called <code>create_certificate_authority</code>. This must be of
the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code></p></td>
</tr>
<tr class="even">
<td><code id="acmpca_tag_certificate_authority_:_Tags">Tags</code></td>
<td><p>[required] List of tags to be associated with the CA.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_certificate_authority(
      CertificateAuthorityArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
