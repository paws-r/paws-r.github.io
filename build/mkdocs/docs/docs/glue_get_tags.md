<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of tags associated with a resource

### Description

Retrieves a list of tags associated with a resource.

### Usage

    glue_get_tags(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_tags_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource for
which to retrieve tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_tags(
      ResourceArn = "string"
    )
