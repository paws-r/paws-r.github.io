<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_describe_document_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the document versions for the specified document

### Description

Retrieves the document versions for the specified document.

By default, only active versions are returned.

### Usage

    workdocs_describe_document_versions(AuthenticationToken, DocumentId,
      Marker, Limit, Include, Fields)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_describe_document_versions_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_document_versions_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_describe_document_versions_:_Marker">Marker</code></td>
<td><p>The marker for the next set of results. (You received this marker
from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_document_versions_:_Limit">Limit</code></td>
<td><p>The maximum number of versions to return with this call.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_describe_document_versions_:_Include">Include</code></td>
<td><p>A comma-separated list of values. Specify "INITIALIZED" to
include incomplete versions.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_describe_document_versions_:_Fields">Fields</code></td>
<td><p>Specify "SOURCE" to include initialized versions and a URL for
the source document.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentVersions = list(
        list(
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
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_document_versions(
      AuthenticationToken = "string",
      DocumentId = "string",
      Marker = "string",
      Limit = 123,
      Include = "string",
      Fields = "string"
    )
