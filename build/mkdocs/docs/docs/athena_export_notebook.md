<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_export_notebook</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports the specified notebook and its metadata

### Description

Exports the specified notebook and its metadata.

### Usage

    athena_export_notebook(NotebookId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_export_notebook_:_NotebookId">NotebookId</code></td>
<td><p>[required] The ID of the notebook to export.</p></td>
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
      ),
      Payload = "string"
    )

### Request syntax

    svc$export_notebook(
      NotebookId = "string"
    )
