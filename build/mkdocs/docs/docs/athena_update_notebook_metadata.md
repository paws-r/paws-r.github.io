<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_update_notebook_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the metadata for a notebook

### Description

Updates the metadata for a notebook.

### Usage

    athena_update_notebook_metadata(NotebookId, ClientRequestToken, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_update_notebook_metadata_:_NotebookId">NotebookId</code></td>
<td><p>[required] The ID of the notebook to update the metadata
for.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_update_notebook_metadata_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique case-sensitive string used to ensure the request to
create the notebook is idempotent (executes only once).</p>
<p>This token is listed as not required because Amazon Web Services SDKs
(for example the Amazon Web Services SDK for Java) auto-generate the
token for you. If you are not using the Amazon Web Services SDK or the
Amazon Web Services CLI, you must provide this token or the action will
fail.</p></td>
</tr>
<tr class="odd">
<td><code id="athena_update_notebook_metadata_:_Name">Name</code></td>
<td><p>[required] The name to update the notebook to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_notebook_metadata(
      NotebookId = "string",
      ClientRequestToken = "string",
      Name = "string"
    )
