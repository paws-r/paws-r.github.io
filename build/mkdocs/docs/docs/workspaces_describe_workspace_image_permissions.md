<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_workspace_image_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the permissions that the owner of an image has granted to other Amazon Web Services accounts for an image

### Description

Describes the permissions that the owner of an image has granted to
other Amazon Web Services accounts for an image.

### Usage

    workspaces_describe_workspace_image_permissions(ImageId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_workspace_image_permissions_:_ImageId">ImageId</code></td>
<td><p>[required] The identifier of the image.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_workspace_image_permissions_:_NextToken">NextToken</code></td>
<td><p>If you received a <code>NextToken</code> from a previous call
that was paginated, provide this token to receive the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_describe_workspace_image_permissions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImageId = "string",
      ImagePermissions = list(
        list(
          SharedAccountId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_workspace_image_permissions(
      ImageId = "string",
      NextToken = "string",
      MaxResults = 123
    )
