<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_delete_workspace_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified image from your account

### Description

Deletes the specified image from your account. To delete an image, you
must first delete any bundles that are associated with the image and
unshare the image if it is shared with other accounts.

### Usage

    workspaces_delete_workspace_image(ImageId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_delete_workspace_image_:_ImageId">ImageId</code></td>
<td><p>[required] The identifier of the image.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_workspace_image(
      ImageId = "string"
    )
