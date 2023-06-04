<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_workspace_images</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes one or more specified images, if the image identifiers are provided

### Description

Retrieves a list that describes one or more specified images, if the
image identifiers are provided. Otherwise, all images in the account are
described.

### Usage

    workspaces_describe_workspace_images(ImageIds, ImageType, NextToken,
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
id="workspaces_describe_workspace_images_:_ImageIds">ImageIds</code></td>
<td><p>The identifier of the image.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_workspace_images_:_ImageType">ImageType</code></td>
<td><p>The type (owned or shared) of the image.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_describe_workspace_images_:_NextToken">NextToken</code></td>
<td><p>If you received a <code>NextToken</code> from a previous call
that was paginated, provide this token to receive the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_workspace_images_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Images = list(
        list(
          ImageId = "string",
          Name = "string",
          Description = "string",
          OperatingSystem = list(
            Type = "WINDOWS"|"LINUX"
          ),
          State = "AVAILABLE"|"PENDING"|"ERROR",
          RequiredTenancy = "DEFAULT"|"DEDICATED",
          ErrorCode = "string",
          ErrorMessage = "string",
          Created = as.POSIXct(
            "2015-01-01"
          ),
          OwnerAccountId = "string",
          Updates = list(
            UpdateAvailable = TRUE|FALSE,
            Description = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_workspace_images(
      ImageIds = list(
        "string"
      ),
      ImageType = "OWNED"|"SHARED",
      NextToken = "string",
      MaxResults = 123
    )
