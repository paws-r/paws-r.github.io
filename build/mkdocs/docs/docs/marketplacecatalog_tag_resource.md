<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tags a resource (either an entity or change set)

### Description

Tags a resource (either an
[entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities)
or [change
set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).

### Usage

    marketplacecatalog_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Required. The Amazon Resource Name (ARN) associated
with the resource you want to tag.</p></td>
</tr>
<tr class="even">
<td><code id="marketplacecatalog_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] Required. A list of objects specifying each key name
and value. Number of objects allowed: 1-50.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
