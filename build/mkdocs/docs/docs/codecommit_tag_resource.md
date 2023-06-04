<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates tags for a resource in AWS CodeCommit

### Description

Adds or updates tags for a resource in AWS CodeCommit. For a list of
valid resources in AWS CodeCommit, see [CodeCommit Resources and
Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/#arn-formats)
in the *AWS CodeCommit User Guide*.

### Usage

    codecommit_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
which you want to add or update tags.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_tag_resource_:_tags">tags</code></td>
<td><p>[required] The key-value pair to use when tagging this
repository.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        "string"
      )
    )
