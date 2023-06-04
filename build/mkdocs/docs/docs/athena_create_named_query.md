<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_create_named_query</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a named query in the specified workgroup

### Description

Creates a named query in the specified workgroup. Requires that you have
access to the workgroup.

For code samples using the Amazon Web Services SDK for Java, see
[Examples and Code
Samples](https://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
in the *Amazon Athena User Guide*.

### Usage

    athena_create_named_query(Name, Description, Database, QueryString,
      ClientRequestToken, WorkGroup)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_create_named_query_:_Name">Name</code></td>
<td><p>[required] The query name.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_create_named_query_:_Description">Description</code></td>
<td><p>The query description.</p></td>
</tr>
<tr class="odd">
<td><code id="athena_create_named_query_:_Database">Database</code></td>
<td><p>[required] The database to which the query belongs.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_create_named_query_:_QueryString">QueryString</code></td>
<td><p>[required] The contents of the query with all query
statements.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_create_named_query_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique case-sensitive string used to ensure the request to
create the query is idempotent (executes only once). If another
<code>create_named_query</code> request is received, the same response
is returned and another query is not created. If a parameter has
changed, for example, the <code>QueryString</code>, an error is
returned.</p>
<p>This token is listed as not required because Amazon Web Services SDKs
(for example the Amazon Web Services SDK for Java) auto-generate the
token for users. If you are not using the Amazon Web Services SDK or the
Amazon Web Services CLI, you must provide this token or the action will
fail.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_create_named_query_:_WorkGroup">WorkGroup</code></td>
<td><p>The name of the workgroup in which the named query is being
created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NamedQueryId = "string"
    )

### Request syntax

    svc$create_named_query(
      Name = "string",
      Description = "string",
      Database = "string",
      QueryString = "string",
      ClientRequestToken = "string",
      WorkGroup = "string"
    )
