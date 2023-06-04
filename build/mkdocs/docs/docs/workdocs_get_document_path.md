<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_get_document_path</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the path information (the hierarchy from the root folder) for the requested document

### Description

Retrieves the path information (the hierarchy from the root folder) for
the requested document.

By default, Amazon WorkDocs returns a maximum of 100 levels upwards from
the requested document and only includes the IDs of the parent folders
in the path. You can limit the maximum number of levels. You can also
request the names of the parent folders.

### Usage

    workdocs_get_document_path(AuthenticationToken, DocumentId, Limit,
      Fields, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_get_document_path_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_get_document_path_:_DocumentId">DocumentId</code></td>
<td><p>[required] The ID of the document.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_get_document_path_:_Limit">Limit</code></td>
<td><p>The maximum number of levels in the hierarchy to return.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_get_document_path_:_Fields">Fields</code></td>
<td><p>A comma-separated list of values. Specify <code>NAME</code> to
include the names of the parent folders.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_get_document_path_:_Marker">Marker</code></td>
<td><p>This value is not supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Path = list(
        Components = list(
          list(
            Id = "string",
            Name = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_document_path(
      AuthenticationToken = "string",
      DocumentId = "string",
      Limit = 123,
      Fields = "string",
      Marker = "string"
    )
