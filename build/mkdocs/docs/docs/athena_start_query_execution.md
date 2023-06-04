<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_start_query_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs the SQL query statements contained in the Query

### Description

Runs the SQL query statements contained in the `Query`. Requires you to
have access to the workgroup in which the query ran. Running queries
against an external catalog requires `get_data_catalog` permission to
the catalog. For code samples using the Amazon Web Services SDK for
Java, see [Examples and Code
Samples](https://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
in the *Amazon Athena User Guide*.

### Usage

    athena_start_query_execution(QueryString, ClientRequestToken,
      QueryExecutionContext, ResultConfiguration, WorkGroup,
      ExecutionParameters, ResultReuseConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_start_query_execution_:_QueryString">QueryString</code></td>
<td><p>[required] The SQL query statements to be executed.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_start_query_execution_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique case-sensitive string used to ensure the request to
create the query is idempotent (executes only once). If another
<code>start_query_execution</code> request is received, the same
response is returned and another query is not created. If a parameter
has changed, for example, the <code>QueryString</code>, an error is
returned.</p>
<p>This token is listed as not required because Amazon Web Services SDKs
(for example the Amazon Web Services SDK for Java) auto-generate the
token for users. If you are not using the Amazon Web Services SDK or the
Amazon Web Services CLI, you must provide this token or the action will
fail.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_start_query_execution_:_QueryExecutionContext">QueryExecutionContext</code></td>
<td><p>The database within which the query executes.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_start_query_execution_:_ResultConfiguration">ResultConfiguration</code></td>
<td><p>Specifies information about where and how to save the results of
the query execution. If the query runs in a workgroup, then workgroup's
settings may override query settings. This affects the query results
location. The workgroup settings override is specified in
EnforceWorkGroupConfiguration (true/false) in the
WorkGroupConfiguration. See
WorkGroupConfiguration$EnforceWorkGroupConfiguration.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_start_query_execution_:_WorkGroup">WorkGroup</code></td>
<td><p>The name of the workgroup in which the query is being
started.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_start_query_execution_:_ExecutionParameters">ExecutionParameters</code></td>
<td><p>A list of values for the parameters in a query. The values are
applied sequentially to the parameters in the query in the order in
which the parameters occur.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_start_query_execution_:_ResultReuseConfiguration">ResultReuseConfiguration</code></td>
<td><p>Specifies the query result reuse behavior for the query.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryExecutionId = "string"
    )

### Request syntax

    svc$start_query_execution(
      QueryString = "string",
      ClientRequestToken = "string",
      QueryExecutionContext = list(
        Database = "string",
        Catalog = "string"
      ),
      ResultConfiguration = list(
        OutputLocation = "string",
        EncryptionConfiguration = list(
          EncryptionOption = "SSE_S3"|"SSE_KMS"|"CSE_KMS",
          KmsKey = "string"
        ),
        ExpectedBucketOwner = "string",
        AclConfiguration = list(
          S3AclOption = "BUCKET_OWNER_FULL_CONTROL"
        )
      ),
      WorkGroup = "string",
      ExecutionParameters = list(
        "string"
      ),
      ResultReuseConfiguration = list(
        ResultReuseByAgeConfiguration = list(
          Enabled = TRUE|FALSE,
          MaxAgeInMinutes = 123
        )
      )
    )
