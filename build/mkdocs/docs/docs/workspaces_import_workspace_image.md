<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_import_workspace_image</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports the specified Windows 10 or 11 Bring Your Own License (BYOL) image into Amazon WorkSpaces

### Description

Imports the specified Windows 10 or 11 Bring Your Own License (BYOL)
image into Amazon WorkSpaces. The image must be an already licensed
Amazon EC2 image that is in your Amazon Web Services account, and you
must own the image. For more information about creating BYOL images, see
[Bring Your Own Windows Desktop
Licenses](https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).

### Usage

    workspaces_import_workspace_image(Ec2ImageId, IngestionProcess,
      ImageName, ImageDescription, Tags, Applications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_import_workspace_image_:_Ec2ImageId">Ec2ImageId</code></td>
<td><p>[required] The identifier of the EC2 image.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_import_workspace_image_:_IngestionProcess">IngestionProcess</code></td>
<td><p>[required] The ingestion process to be used when importing the
image, depending on which protocol you want to use for your BYOL
Workspace image, either PCoIP, WorkSpaces Streaming Protocol (WSP), or
bring your own protocol (BYOP). To use WSP, specify a value that ends in
<code style="white-space: pre;">⁠_WSP⁠</code>. To use PCoIP, specify a
value that does not end in <code style="white-space: pre;">⁠_WSP⁠</code>.
To use BYOP, specify a value that ends in <code
style="white-space: pre;">⁠_BYOP⁠</code>.</p>
<p>For non-GPU-enabled bundles (bundles other than Graphics or
GraphicsPro), specify <code>BYOL_REGULAR</code>,
<code>BYOL_REGULAR_WSP</code>, or <code>BYOL_REGULAR_BYOP</code>,
depending on the protocol.</p>
<p>The <code>BYOL_REGULAR_BYOP</code> and
<code>BYOL_GRAPHICS_G4DN_BYOP</code> values are only supported by Amazon
WorkSpaces Core. Contact your account team to be allow-listed to use
these values. For more information, see <a
href="https://aws.amazon.com/workspaces/core/">Amazon WorkSpaces
Core</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_import_workspace_image_:_ImageName">ImageName</code></td>
<td><p>[required] The name of the WorkSpace image.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_import_workspace_image_:_ImageDescription">ImageDescription</code></td>
<td><p>[required] The description of the WorkSpace image.</p></td>
</tr>
<tr class="odd">
<td><code id="workspaces_import_workspace_image_:_Tags">Tags</code></td>
<td><p>The tags. Each WorkSpaces resource can have a maximum of 50
tags.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_import_workspace_image_:_Applications">Applications</code></td>
<td><p>If specified, the version of Microsoft Office to subscribe to.
Valid only for Windows 10 and 11 BYOL images. For more information about
subscribing to Office for BYOL images, see <a
href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html">Bring
Your Own Windows Desktop Licenses</a>.</p>
<ul>
<li><p>Although this parameter is an array, only one item is allowed at
this time.</p></li>
<li><p>Windows 11 only supports
<code>Microsoft_Office_2019</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageId = "string"
    )

### Request syntax

    svc$import_workspace_image(
      Ec2ImageId = "string",
      IngestionProcess = "BYOL_REGULAR"|"BYOL_GRAPHICS"|"BYOL_GRAPHICSPRO"|"BYOL_GRAPHICS_G4DN"|"BYOL_REGULAR_WSP"|"BYOL_REGULAR_BYOP"|"BYOL_GRAPHICS_G4DN_BYOP",
      ImageName = "string",
      ImageDescription = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      Applications = list(
        "Microsoft_Office_2016"|"Microsoft_Office_2019"
      )
    )
