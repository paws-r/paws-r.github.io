<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_remove_tags_from_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove one or more tags from an ACM certificate

### Description

Remove one or more tags from an ACM certificate. A tag consists of a
key-value pair. If you do not specify the value portion of the tag when
calling this function, the tag will be removed regardless of value. If
you specify a value, the tag is removed only if it is associated with
the specified value.

To add tags to a certificate, use the `add_tags_to_certificate` action.
To view all of the tags that have been applied to a specific ACM
certificate, use the `list_tags_for_certificate` action.

### Usage

    acm_remove_tags_from_certificate(CertificateArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_remove_tags_from_certificate_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] String that contains the ARN of the ACM Certificate
with one or more tags that you want to remove. This must be of the
form:</p>
<p><code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code></p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a>.</p></td>
</tr>
<tr class="even">
<td><code id="acm_remove_tags_from_certificate_:_Tags">Tags</code></td>
<td><p>[required] The key-value pair that defines the tag to
remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags_from_certificate(
      CertificateArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
