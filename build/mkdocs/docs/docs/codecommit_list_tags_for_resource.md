<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeCommit

### Description

Gets information about AWS tags for a specified Amazon Resource Name
(ARN) in AWS CodeCommit. For a list of valid resources in AWS
CodeCommit, see [CodeCommit Resources and
Operations](https://docs.aws.amazon.com/codecommit/latest/userguide/#arn-formats)
in the *AWS CodeCommit User Guide*.

### Usage

    codecommit_list_tags_for_resource(resourceArn, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource for
which you want to get information about tags, if any.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_list_tags_for_resource_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string",
      nextToken = "string"
    )
