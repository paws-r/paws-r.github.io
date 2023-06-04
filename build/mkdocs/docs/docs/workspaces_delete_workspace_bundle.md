<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_delete_workspace_bundle</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified WorkSpace bundle

### Description

Deletes the specified WorkSpace bundle. For more information about
deleting WorkSpace bundles, see [Delete a Custom WorkSpaces Bundle or
Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/delete_bundle.html).

### Usage

    workspaces_delete_workspace_bundle(BundleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_delete_workspace_bundle_:_BundleId">BundleId</code></td>
<td><p>The identifier of the bundle.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_workspace_bundle(
      BundleId = "string"
    )
