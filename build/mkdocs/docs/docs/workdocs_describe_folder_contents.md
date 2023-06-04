<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_describe_folder_contents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the contents of the specified folder, including its documents and subfolders

### Description

Describes the contents of the specified folder, including its documents
and subfolders.

By default, Amazon WorkDocs returns the first 100 active document and
folder metadata items. If there are more results, the response includes
a marker that you can use to request the next set of results. You can
also request initialized documents.

### Usage

    workdocs_describe_folder_contents(AuthenticationToken, FolderId, Sort,
      Order, Limit, Marker, Type, Include)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_describe_folder_contents_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_folder_contents_:_FolderId">FolderId</code></td>
<td><p>[required] The ID of the folder.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_describe_folder_contents_:_Sort">Sort</code></td>
<td><p>The sorting criteria.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_folder_contents_:_Order">Order</code></td>
<td><p>The order for the contents of the folder.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_describe_folder_contents_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_folder_contents_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. This marker was received
from a previous call.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_describe_folder_contents_:_Type">Type</code></td>
<td><p>The type of items.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_folder_contents_:_Include">Include</code></td>
<td><p>The contents to include. Specify "INITIALIZED" to include
initialized documents.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Folders = list(
        list(
          Id = "string",
          Name = "string",
          CreatorId = "string",
          ParentFolderId = "string",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ModifiedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ResourceState = "ACTIVE"|"RESTORING"|"RECYCLING"|"RECYCLED",
          Signature = "string",
          Labels = list(
            "string"
          ),
          Size = 123,
          LatestVersionSize = 123
        )
      ),
      Documents = list(
        list(
          Id = "string",
          CreatorId = "string",
          ParentFolderId = "string",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ModifiedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          LatestVersionMetadata = list(
            Id = "string",
            Name = "string",
            ContentType = "string",
            Size = 123,
            Signature = "string",
            Status = "INITIALIZED"|"ACTIVE",
            CreatedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            ModifiedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            ContentCreatedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            ContentModifiedTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            CreatorId = "string",
            Thumbnail = list(
              "string"
            ),
            Source = list(
              "string"
            )
          ),
          ResourceState = "ACTIVE"|"RESTORING"|"RECYCLING"|"RECYCLED",
          Labels = list(
            "string"
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_folder_contents(
      AuthenticationToken = "string",
      FolderId = "string",
      Sort = "DATE"|"NAME",
      Order = "ASCENDING"|"DESCENDING",
      Limit = 123,
      Marker = "string",
      Type = "ALL"|"DOCUMENT"|"FOLDER",
      Include = "string"
    )
