<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_create_workspace_bundle</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates the specified WorkSpace bundle

### Description

Creates the specified WorkSpace bundle. For more information about
creating WorkSpace bundles, see [Create a Custom WorkSpaces Image and
Bundle](https://docs.aws.amazon.com/workspaces/latest/adminguide/create-custom-bundle.html).

### Usage

    workspaces_create_workspace_bundle(BundleName, BundleDescription,
      ImageId, ComputeType, UserStorage, RootStorage, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_create_workspace_bundle_:_BundleName">BundleName</code></td>
<td><p>[required] The name of the bundle.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_create_workspace_bundle_:_BundleDescription">BundleDescription</code></td>
<td><p>[required] The description of the bundle.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_create_workspace_bundle_:_ImageId">ImageId</code></td>
<td><p>[required] The identifier of the image that is used to create the
bundle.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_create_workspace_bundle_:_ComputeType">ComputeType</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_create_workspace_bundle_:_UserStorage">UserStorage</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_create_workspace_bundle_:_RootStorage">RootStorage</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_create_workspace_bundle_:_Tags">Tags</code></td>
<td><p>The tags associated with the bundle.</p>
<p>To add tags at the same time when you're creating the bundle, you
must create an IAM policy that grants your IAM user permissions to use
<code>workspaces:CreateTags</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WorkspaceBundle = list(
        BundleId = "string",
        Name = "string",
        Owner = "string",
        Description = "string",
        ImageId = "string",
        RootStorage = list(
          Capacity = "string"
        ),
        UserStorage = list(
          Capacity = "string"
        ),
        ComputeType = list(
          Name = "VALUE"|"STANDARD"|"PERFORMANCE"|"POWER"|"GRAPHICS"|"POWERPRO"|"GRAPHICSPRO"|"GRAPHICS_G4DN"|"GRAPHICSPRO_G4DN"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        State = "AVAILABLE"|"PENDING"|"ERROR",
        BundleType = "REGULAR"|"STANDBY"
      )
    )

### Request syntax

    svc$create_workspace_bundle(
      BundleName = "string",
      BundleDescription = "string",
      ImageId = "string",
      ComputeType = list(
        Name = "VALUE"|"STANDARD"|"PERFORMANCE"|"POWER"|"GRAPHICS"|"POWERPRO"|"GRAPHICSPRO"|"GRAPHICS_G4DN"|"GRAPHICSPRO_G4DN"
      ),
      UserStorage = list(
        Capacity = "string"
      ),
      RootStorage = list(
        Capacity = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
