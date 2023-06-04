<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a tag or list of tags from a resource (either an entity or change set)

### Description

Removes a tag or list of tags from a resource (either an
[entity](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#catalog-api-entities)
or [change
set](https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html#working-with-change-sets)).

### Usage

    marketplacecatalog_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Required. The Amazon Resource Name (ARN) associated
with the resource you want to remove the tag from.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecatalog_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] Required. A list of key names of tags to be removed.
Number of strings allowed: 0-256.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
