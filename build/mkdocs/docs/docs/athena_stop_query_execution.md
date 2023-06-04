<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_stop_query_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a query execution

### Description

Stops a query execution. Requires you to have access to the workgroup in
which the query ran.

For code samples using the Amazon Web Services SDK for Java, see
[Examples and Code
Samples](https://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
in the *Amazon Athena User Guide*.

### Usage

    athena_stop_query_execution(QueryExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_stop_query_execution_:_QueryExecutionId">QueryExecutionId</code></td>
<td><p>[required] The unique ID of the query execution to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_query_execution(
      QueryExecutionId = "string"
    )
