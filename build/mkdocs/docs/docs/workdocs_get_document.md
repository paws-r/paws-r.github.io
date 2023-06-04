<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_get_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves details of a document

### Description

Retrieves details of a document.

### Usage

    workdocs_get_document(AuthenticationToken, DocumentId,
      IncludeCustomMetadata)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_get_document_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_get_document_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_get_document_:_IncludeCustomMetadata">IncludeCustomMetadata</code></td>
<td><p>Set this to <code>TRUE</code> to include custom metadata in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Metadata = list(
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
      ),
      CustomMetadata = list(
        "string"
      )
    )

### Request syntax

    svc$get_document(
      AuthenticationToken = "string",
      DocumentId = "string",
      IncludeCustomMetadata = TRUE|FALSE
    )
