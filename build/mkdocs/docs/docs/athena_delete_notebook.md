<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_delete_notebook</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified notebook

### Description

Deletes the specified notebook.

### Usage

    athena_delete_notebook(NotebookId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_delete_notebook_:_NotebookId">NotebookId</code></td>
<td><p>[required] The ID of the notebook to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_notebook(
      NotebookId = "string"
    )
