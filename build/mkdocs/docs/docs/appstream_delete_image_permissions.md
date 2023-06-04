<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_delete_image_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes permissions for the specified private image

### Description

Deletes permissions for the specified private image. After you delete
permissions for an image, AWS accounts to which you previously granted
these permissions can no longer use the image.

### Usage

    appstream_delete_image_permissions(Name, SharedAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_delete_image_permissions_:_Name">Name</code></td>
<td><p>[required] The name of the private image.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_delete_image_permissions_:_SharedAccountId">SharedAccountId</code></td>
<td><p>[required] The 12-digit identifier of the AWS account for which
to delete image permissions.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_image_permissions(
      Name = "string",
      SharedAccountId = "string"
    )
