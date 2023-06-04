<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_notebook_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves notebook metadata for the specified notebook ID

### Description

Retrieves notebook metadata for the specified notebook ID.

### Usage

    athena_get_notebook_metadata(NotebookId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_get_notebook_metadata_:_NotebookId">NotebookId</code></td>
<td><p>[required] The ID of the notebook whose metadata is to be
retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotebookMetadata = list(
        NotebookId = "string",
        Name = "string",
        WorkGroup = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Type = "IPYNB",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_notebook_metadata(
      NotebookId = "string"
    )
