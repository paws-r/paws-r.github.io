<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_update_notebook</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the contents of a Spark notebook

### Description

Updates the contents of a Spark notebook.

### Usage

    athena_update_notebook(NotebookId, Payload, Type, SessionId,
      ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_update_notebook_:_NotebookId">NotebookId</code></td>
<td><p>[required] The ID of the notebook to update.</p></td>
</tr>
<tr class="even">
<td><code id="athena_update_notebook_:_Payload">Payload</code></td>
<td><p>[required] The updated content for the notebook.</p></td>
</tr>
<tr class="odd">
<td><code id="athena_update_notebook_:_Type">Type</code></td>
<td><p>[required] The notebook content type. Currently, the only valid
type is <code>IPYNB</code>.</p></td>
</tr>
<tr class="even">
<td><code id="athena_update_notebook_:_SessionId">SessionId</code></td>
<td><p>The active notebook session ID. Required if the notebook has an
active session.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_update_notebook_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique case-sensitive string used to ensure the request to
create the notebook is idempotent (executes only once).</p>
<p>This token is listed as not required because Amazon Web Services SDKs
(for example the Amazon Web Services SDK for Java) auto-generate the
token for you. If you are not using the Amazon Web Services SDK or the
Amazon Web Services CLI, you must provide this token or the action will
fail.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_notebook(
      NotebookId = "string",
      Payload = "string",
      Type = "IPYNB",
      SessionId = "string",
      ClientRequestToken = "string"
    )
