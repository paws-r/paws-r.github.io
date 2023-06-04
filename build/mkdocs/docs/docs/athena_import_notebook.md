<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_import_notebook</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports a single ipynb file to a Spark enabled workgroup

### Description

Imports a single `ipynb` file to a Spark enabled workgroup. The maximum
file size that can be imported is 10 megabytes. If an `ipynb` file with
the same name already exists in the workgroup, throws an error.

### Usage

    athena_import_notebook(WorkGroup, Name, Payload, Type,
      ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_import_notebook_:_WorkGroup">WorkGroup</code></td>
<td><p>[required] The name of the Spark enabled workgroup to import the
notebook to.</p></td>
</tr>
<tr class="even">
<td><code id="athena_import_notebook_:_Name">Name</code></td>
<td><p>[required] The name of the notebook to import.</p></td>
</tr>
<tr class="odd">
<td><code id="athena_import_notebook_:_Payload">Payload</code></td>
<td><p>[required] The notebook content to be imported.</p></td>
</tr>
<tr class="even">
<td><code id="athena_import_notebook_:_Type">Type</code></td>
<td><p>[required] The notebook content type. Currently, the only valid
type is <code>IPYNB</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_import_notebook_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique case-sensitive string used to ensure the request to
import the notebook is idempotent (executes only once).</p>
<p>This token is listed as not required because Amazon Web Services SDKs
(for example the Amazon Web Services SDK for Java) auto-generate the
token for you. If you are not using the Amazon Web Services SDK or the
Amazon Web Services CLI, you must provide this token or the action will
fail.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotebookId = "string"
    )

### Request syntax

    svc$import_notebook(
      WorkGroup = "string",
      Name = "string",
      Payload = "string",
      Type = "IPYNB",
      ClientRequestToken = "string"
    )
