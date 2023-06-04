<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_remove_tags_from_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a directory

### Description

Removes tags from a directory.

### Usage

    directoryservice_remove_tags_from_resource(ResourceId, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_remove_tags_from_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] Identifier (ID) of the directory from which to remove
the tag.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_remove_tags_from_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag key (name) of the tag to be removed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags_from_resource(
      ResourceId = "string",
      TagKeys = list(
        "string"
      )
    )
