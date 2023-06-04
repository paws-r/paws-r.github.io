<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appstream_update_image_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates permissions for the specified private image

### Description

Adds or updates permissions for the specified private image.

### Usage

    appstream_update_image_permissions(Name, SharedAccountId,
      ImagePermissions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appstream_update_image_permissions_:_Name">Name</code></td>
<td><p>[required] The name of the private image.</p></td>
</tr>
<tr class="even">
<td><code
id="appstream_update_image_permissions_:_SharedAccountId">SharedAccountId</code></td>
<td><p>[required] The 12-digit identifier of the AWS account for which
you want add or update image permissions.</p></td>
</tr>
<tr class="odd">
<td><code
id="appstream_update_image_permissions_:_ImagePermissions">ImagePermissions</code></td>
<td><p>[required] The permissions for the image.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_image_permissions(
      Name = "string",
      SharedAccountId = "string",
      ImagePermissions = list(
        allowFleet = TRUE|FALSE,
        allowImageBuilder = TRUE|FALSE
      )
    )
