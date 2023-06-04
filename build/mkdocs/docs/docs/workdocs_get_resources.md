<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_get_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a collection of resources, including folders and documents

### Description

Retrieves a collection of resources, including folders and documents.
The only `CollectionType` supported is `SHARED_WITH_ME`.

### Usage

    workdocs_get_resources(AuthenticationToken, UserId, CollectionType,
      Limit, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_get_resources_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>The Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_get_resources_:_UserId">UserId</code></td>
<td><p>The user ID for the resource collection. This is a required field
for accessing the API operation using IAM credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_get_resources_:_CollectionType">CollectionType</code></td>
<td><p>The collection type.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_get_resources_:_Limit">Limit</code></td>
<td><p>The maximum number of resources to return.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_get_resources_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. This marker was received
from a previous call.</p></td>
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

    svc$get_resources(
      AuthenticationToken = "string",
      UserId = "string",
      CollectionType = "SHARED_WITH_ME",
      Limit = 123,
      Marker = "string"
    )
