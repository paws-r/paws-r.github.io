<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_untag_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tags from the customer managed policy

### Description

Removes the specified tags from the customer managed policy. For more
information about tagging, see [Tagging IAM
resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html)
in the *IAM User Guide*.

### Usage

    iam_untag_policy(PolicyArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_untag_policy_:_PolicyArn">PolicyArn</code></td>
<td><p>[required] The ARN of the IAM customer managed policy from which
you want to remove tags.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_untag_policy_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of key names as a simple array of strings. The
tags with matching keys are removed from the specified policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_policy(
      PolicyArn = "string",
      TagKeys = list(
        "string"
      )
    )
