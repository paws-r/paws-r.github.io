<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_update_workspace_image_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Shares or unshares an image with one account in the same Amazon Web Services Region by specifying whether that account has permission to copy the image

### Description

Shares or unshares an image with one account in the same Amazon Web
Services Region by specifying whether that account has permission to
copy the image. If the copy image permission is granted, the image is
shared with that account. If the copy image permission is revoked, the
image is unshared with the account.

After an image has been shared, the recipient account can copy the image
to other Regions as needed.

In the China (Ningxia) Region, you can copy images only within the same
Region.

In Amazon Web Services GovCloud (US), to copy images to and from other
Regions, contact Amazon Web Services Support.

For more information about sharing images, see [Share or Unshare a
Custom WorkSpaces
Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html).

-   To delete an image that has been shared, you must unshare the image
    before you delete it.

-   Sharing Bring Your Own License (BYOL) images across Amazon Web
    Services accounts isn't supported at this time in Amazon Web
    Services GovCloud (US). To share BYOL images across accounts in
    Amazon Web Services GovCloud (US), contact Amazon Web Services
    Support.

### Usage

    workspaces_update_workspace_image_permission(ImageId, AllowCopyImage,
      SharedAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_update_workspace_image_permission_:_ImageId">ImageId</code></td>
<td><p>[required] The identifier of the image.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_update_workspace_image_permission_:_AllowCopyImage">AllowCopyImage</code></td>
<td><p>[required] The permission to copy the image. This permission can
be revoked only after an image has been shared.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_update_workspace_image_permission_:_SharedAccountId">SharedAccountId</code></td>
<td><p>[required] The identifier of the Amazon Web Services account to
share or unshare the image with.</p>
<p>Before sharing the image, confirm that you are sharing to the correct
Amazon Web Services account ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_workspace_image_permission(
      ImageId = "string",
      AllowCopyImage = TRUE|FALSE,
      SharedAccountId = "string"
    )
