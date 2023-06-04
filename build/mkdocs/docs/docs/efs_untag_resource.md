<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from an EFS resource

### Description

Removes tags from an EFS resource. You can remove tags from EFS file
systems and access points using this API operation.

This operation requires permissions for the
`elasticfilesystem:UntagResource` action.

### Usage

    efs_untag_resource(ResourceId, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="efs_untag_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] Specifies the EFS resource that you want to remove
tags from.</p></td>
</tr>
<tr class="even">
<td><code id="efs_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The keys of the key-value tag pairs that you want to
remove from the specified EFS resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceId = "string",
      TagKeys = list(
        "string"
      )
    )
