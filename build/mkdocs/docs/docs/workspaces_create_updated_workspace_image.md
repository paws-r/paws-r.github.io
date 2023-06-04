<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_create_updated_workspace_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new updated WorkSpace image based on the specified source image

### Description

Creates a new updated WorkSpace image based on the specified source
image. The new updated WorkSpace image has the latest drivers and other
updates required by the Amazon WorkSpaces components.

To determine which WorkSpace images need to be updated with the latest
Amazon WorkSpaces requirements, use
[DescribeWorkspaceImages](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html).

-   Only Windows 10, Windows Server 2016, and Windows Server 2019
    WorkSpace images can be programmatically updated at this time.

-   Microsoft Windows updates and other application updates are not
    included in the update process.

-   The source WorkSpace image is not deleted. You can delete the source
    image after you've verified your new updated image and created a new
    bundle.

### Usage

    workspaces_create_updated_workspace_image(Name, Description,
      SourceImageId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_create_updated_workspace_image_:_Name">Name</code></td>
<td><p>[required] The name of the new updated WorkSpace image.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_create_updated_workspace_image_:_Description">Description</code></td>
<td><p>[required] A description of whether updates for the WorkSpace
image are available.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_create_updated_workspace_image_:_SourceImageId">SourceImageId</code></td>
<td><p>[required] The identifier of the source WorkSpace image.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_create_updated_workspace_image_:_Tags">Tags</code></td>
<td><p>The tags that you want to add to the new updated WorkSpace
image.</p>
<p>To add tags at the same time when you're creating the updated image,
you must create an IAM policy that grants your IAM user permissions to
use <code>workspaces:CreateTags</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageId = "string"
    )

### Request syntax

    svc$create_updated_workspace_image(
      Name = "string",
      Description = "string",
      SourceImageId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
