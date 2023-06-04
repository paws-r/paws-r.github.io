<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_update_workspace_bundle</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a WorkSpace bundle with a new image

### Description

Updates a WorkSpace bundle with a new image. For more information about
updating WorkSpace bundles, see [Update a Custom WorkSpaces
Bundle](https://docs.aws.amazon.com/workspaces/latest/adminguide/update-custom-bundle.html).

Existing WorkSpaces aren't automatically updated when you update the
bundle that they're based on. To update existing WorkSpaces that are
based on a bundle that you've updated, you must either rebuild the
WorkSpaces or delete and recreate them.

### Usage

    workspaces_update_workspace_bundle(BundleId, ImageId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_update_workspace_bundle_:_BundleId">BundleId</code></td>
<td><p>The identifier of the bundle.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_update_workspace_bundle_:_ImageId">ImageId</code></td>
<td><p>The identifier of the image.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_workspace_bundle(
      BundleId = "string",
      ImageId = "string"
    )
