<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags that have been added to a resource (either an entity or change set)

### Description

Lists all tags that have been added to a resource (either an
[entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities)
or [change
set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).

### Usage

    marketplacecatalog_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Required. The Amazon Resource Name (ARN) associated
with the resource you want to list tags on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
