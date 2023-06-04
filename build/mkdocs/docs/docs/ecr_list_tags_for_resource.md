<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecr_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the tags for an Amazon ECR resource

### Description

List the tags for an Amazon ECR resource.

### Usage

    ecr_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecr_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
resource for which to list the tags. Currently, the only supported
resource is an Amazon ECR repository.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string"
    )
