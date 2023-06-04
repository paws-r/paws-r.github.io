<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_put_query_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates a query definition for CloudWatch Logs Insights

### Description

Creates or updates a query definition for CloudWatch Logs Insights. For
more information, see [Analyzing Log Data with CloudWatch Logs
Insights](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html).

To update a query definition, specify its `queryDefinitionId` in your
request. The values of `name`, `queryString`, and `logGroupNames` are
changed to the values that you specify in your update operation. No
current values are retained from the current query definition. For
example, imagine updating a current query definition that includes log
groups. If you don't specify the `logGroupNames` parameter in your
update operation, the query definition changes to contain no log groups.

You must have the `logs:PutQueryDefinition` permission to be able to
perform this operation.

### Usage

    cloudwatchlogs_put_query_definition(name, queryDefinitionId,
      logGroupNames, queryString)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_query_definition_:_name">name</code></td>
<td><p>[required] A name for the query definition. If you are saving
numerous query definitions, we recommend that you name them. This way,
you can find the ones you want by using the first part of the name as a
filter in the <code>queryDefinitionNamePrefix</code> parameter of
<code>describe_query_definitions</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_query_definition_:_queryDefinitionId">queryDefinitionId</code></td>
<td><p>If you are updating a query definition, use this parameter to
specify the ID of the query definition that you want to update. You can
use <code>describe_query_definitions</code> to retrieve the IDs of your
saved query definitions.</p>
<p>If you are creating a query definition, do not specify this
parameter. CloudWatch generates a unique ID for the new query definition
and include it in the response to this operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_put_query_definition_:_logGroupNames">logGroupNames</code></td>
<td><p>Use this parameter to include specific log groups as part of your
query definition.</p>
<p>If you are updating a query definition and you omit this parameter,
then the updated definition will contain no log groups.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_put_query_definition_:_queryString">queryString</code></td>
<td><p>[required] The query string to use for this definition. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html">CloudWatch
Logs Insights Query Syntax</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      queryDefinitionId = "string"
    )

### Request syntax

    svc$put_query_definition(
      name = "string",
      queryDefinitionId = "string",
      logGroupNames = list(
        "string"
      ),
      queryString = "string"
    )
