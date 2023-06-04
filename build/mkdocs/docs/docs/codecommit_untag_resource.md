<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags for a resource in AWS CodeCommit

### Description

Removes tags for a resource in AWS CodeCommit. For a list of valid
resources in AWS CodeCommit, see [CodeCommit Resources and
Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/#arn-formats)
in the *AWS CodeCommit User Guide*.

### Usage

    codecommit_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
which you want to remove tags.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The tag key for each tag that you want to remove from
the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
