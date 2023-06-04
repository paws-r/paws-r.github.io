<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_copy_workspace_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies the specified image from the specified Region to the current Region

### Description

Copies the specified image from the specified Region to the current
Region. For more information about copying images, see [Copy a Custom
WorkSpaces
Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html).

In the China (Ningxia) Region, you can copy images only within the same
Region.

In Amazon Web Services GovCloud (US), to copy images to and from other
Regions, contact Amazon Web Services Support.

Before copying a shared image, be sure to verify that it has been shared
from the correct Amazon Web Services account. To determine if an image
has been shared and to see the ID of the Amazon Web Services account
that owns an image, use the
[DescribeWorkSpaceImages](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html)
and `describe_workspace_image_permissions` API operations.

### Usage

    workspaces_copy_workspace_image(Name, Description, SourceImageId,
      SourceRegion, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="workspaces_copy_workspace_image_:_Name">Name</code></td>
<td><p>[required] The name of the image.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_copy_workspace_image_:_Description">Description</code></td>
<td><p>A description of the image.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_copy_workspace_image_:_SourceImageId">SourceImageId</code></td>
<td><p>[required] The identifier of the source image.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_copy_workspace_image_:_SourceRegion">SourceRegion</code></td>
<td><p>[required] The identifier of the source Region.</p></td>
</tr>
<tr class="odd">
<td><code id="workspaces_copy_workspace_image_:_Tags">Tags</code></td>
<td><p>The tags for the image.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageId = "string"
    )

### Request syntax

    svc$copy_workspace_image(
      Name = "string",
      Description = "string",
      SourceImageId = "string",
      SourceRegion = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
