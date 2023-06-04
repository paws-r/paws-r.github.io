<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_remove_tags_from_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes metadata tags from an Amazon DocumentDB resource

### Description

Removes metadata tags from an Amazon DocumentDB resource.

### Usage

    docdb_remove_tags_from_resource(ResourceName, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_remove_tags_from_resource_:_ResourceName">ResourceName</code></td>
<td><p>[required] The Amazon DocumentDB resource that the tags are
removed from. This value is an Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_remove_tags_from_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag key (name) of the tag to be removed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags_from_resource(
      ResourceName = "string",
      TagKeys = list(
        "string"
      )
    )
