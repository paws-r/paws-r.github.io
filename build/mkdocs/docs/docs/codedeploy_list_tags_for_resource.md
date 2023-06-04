<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tags for the resource identified by a specified Amazon Resource Name (ARN)

### Description

Returns a list of tags for the resource identified by a specified Amazon
Resource Name (ARN). Tags are used to organize and categorize your
CodeDeploy resources.

### Usage

    codedeploy_list_tags_for_resource(ResourceArn, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of a CodeDeploy resource.
<code>list_tags_for_resource</code> returns all the tags associated with
the resource that is identified by the
<code>ResourceArn</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_list_tags_for_resource_:_NextToken">NextToken</code></td>
<td><p>An identifier returned from the previous
<code>list_tags_for_resource</code> call. It can be used to return the
next set of applications in the list.</p></td>
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

    svc$list_tags_for_resource(
      ResourceArn = "string",
      NextToken = "string"
    )
