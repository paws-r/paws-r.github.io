<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags assigned to a resource

### Description

Lists the tags assigned to a resource.

### Usage

    quicksight_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want a list of tags for.</p></td>
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
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
