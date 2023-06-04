<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_delete_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified tags from the specified WorkSpaces resource

### Description

Deletes the specified tags from the specified WorkSpaces resource.

### Usage

    workspaces_delete_tags(ResourceId, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_delete_tags_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the WorkSpaces resource. The
supported resource types are WorkSpaces, registered directories, images,
custom bundles, IP access control groups, and connection
aliases.</p></td>
</tr>
<tr class="even">
<td><code id="workspaces_delete_tags_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag keys.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_tags(
      ResourceId = "string",
      TagKeys = list(
        "string"
      )
    )
