<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_create_workspace_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new WorkSpace image from an existing WorkSpace

### Description

Creates a new WorkSpace image from an existing WorkSpace.

### Usage

    workspaces_create_workspace_image(Name, Description, WorkspaceId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="workspaces_create_workspace_image_:_Name">Name</code></td>
<td><p>[required] The name of the new WorkSpace image.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_create_workspace_image_:_Description">Description</code></td>
<td><p>[required] The description of the new WorkSpace image.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_create_workspace_image_:_WorkspaceId">WorkspaceId</code></td>
<td><p>[required] The identifier of the source WorkSpace</p></td>
</tr>
<tr class="even">
<td><code id="workspaces_create_workspace_image_:_Tags">Tags</code></td>
<td><p>The tags that you want to add to the new WorkSpace image. To add
tags when you're creating the image, you must create an IAM policy that
grants your IAM user permission to use
<code>workspaces:CreateTags</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageId = "string",
      Name = "string",
      Description = "string",
      OperatingSystem = list(
        Type = "WINDOWS"|"LINUX"
      ),
      State = "AVAILABLE"|"PENDING"|"ERROR",
      RequiredTenancy = "DEFAULT"|"DEDICATED",
      Created = as.POSIXct(
        "2015-01-01"
      ),
      OwnerAccountId = "string"
    )

### Request syntax

    svc$create_workspace_image(
      Name = "string",
      Description = "string",
      WorkspaceId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
