<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_create_notebook</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an empty ipynb file in the specified Apache Spark enabled workgroup

### Description

Creates an empty `ipynb` file in the specified Apache Spark enabled
workgroup. Throws an error if a file in the workgroup with the same name
already exists.

### Usage

    athena_create_notebook(WorkGroup, Name, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_create_notebook_:_WorkGroup">WorkGroup</code></td>
<td><p>[required] The name of the Spark enabled workgroup in which the
notebook will be created.</p></td>
</tr>
<tr class="even">
<td><code id="athena_create_notebook_:_Name">Name</code></td>
<td><p>[required] The name of the <code>ipynb</code> file to be created
in the Spark workgroup, without the <code>.ipynb</code>
extension.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_create_notebook_:_ClientRequestToken">ClientRequestToken</code></td>
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

A list with the following syntax:

    list(
      NotebookId = "string"
    )

### Request syntax

    svc$create_notebook(
      WorkGroup = "string",
      Name = "string",
      ClientRequestToken = "string"
    )
