<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_list_tags_for_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags that have been applied to the ACM certificate

### Description

Lists the tags that have been applied to the ACM certificate. Use the
certificate's Amazon Resource Name (ARN) to specify the certificate. To
add a tag to an ACM certificate, use the `add_tags_to_certificate`
action. To delete a tag, use the `remove_tags_from_certificate` action.

### Usage

    acm_list_tags_for_certificate(CertificateArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_list_tags_for_certificate_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] String that contains the ARN of the ACM certificate
for which you want to list the tags. This must have the following
form:</p>
<p><code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code></p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_certificate(
      CertificateArn = "string"
    )
