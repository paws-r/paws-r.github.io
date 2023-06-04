<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_list_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags, if any, that are associated with your private CA or one that has been shared with you

### Description

Lists the tags, if any, that are associated with your private CA or one
that has been shared with you. Tags are labels that you can use to
identify and organize your CAs. Each tag consists of a key and an
optional value. Call the `tag_certificate_authority` action to add one
or more tags to your CA. Call the `untag_certificate_authority` action
to remove tags.

### Usage

    acmpca_list_tags(CertificateAuthorityArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_list_tags_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that was returned when
you called the <code>create_certificate_authority</code> action. This
must be of the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code></p></td>
</tr>
<tr class="even">
<td><code id="acmpca_list_tags_:_NextToken">NextToken</code></td>
<td><p>Use this parameter when paginating results in a subsequent
request after you receive a response with truncated results. Set it to
the value of <strong>NextToken</strong> from the response you just
received.</p></td>
</tr>
<tr class="odd">
<td><code id="acmpca_list_tags_:_MaxResults">MaxResults</code></td>
<td><p>Use this parameter when paginating results to specify the maximum
number of items to return in the response. If additional items exist
beyond the number you specify, the <strong>NextToken</strong> element is
sent in the response. Use this <strong>NextToken</strong> value in a
subsequent request to retrieve additional items.</p></td>
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags(
      CertificateAuthorityArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
