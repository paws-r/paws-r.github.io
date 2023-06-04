<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_add_tags_to_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to an ACM certificate

### Description

Adds one or more tags to an ACM certificate. Tags are labels that you
can use to identify and organize your Amazon Web Services resources.
Each tag consists of a `key` and an optional `value`. You specify the
certificate on input by its Amazon Resource Name (ARN). You specify the
tag by using a key-value pair.

You can apply a tag to just one certificate if you want to identify a
specific characteristic of that certificate, or you can apply the same
tag to multiple certificates if you want to filter for a common
relationship among those certificates. Similarly, you can apply the same
tag to multiple resources if you want to specify a relationship among
those resources. For example, you can add the same tag to an ACM
certificate and an Elastic Load Balancing load balancer to indicate that
they are both used by the same website. For more information, see
[Tagging ACM
certificates](https://docs.aws.amazon.com/acm/latest/userguide/tags.html).

To remove one or more tags, use the `remove_tags_from_certificate`
action. To view all of the tags that have been applied to the
certificate, use the `list_tags_for_certificate` action.

### Usage

    acm_add_tags_to_certificate(CertificateArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_add_tags_to_certificate_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] String that contains the ARN of the ACM certificate to
which the tag is to be applied. This must be of the form:</p>
<p><code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code></p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a>.</p></td>
</tr>
<tr class="even">
<td><code id="acm_add_tags_to_certificate_:_Tags">Tags</code></td>
<td><p>[required] The key-value pair that defines the tag. The tag value
is optional.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags_to_certificate(
      CertificateArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
