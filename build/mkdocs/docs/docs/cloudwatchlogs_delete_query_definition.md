<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_delete_query_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a saved CloudWatch Logs Insights query definition

### Description

Deletes a saved CloudWatch Logs Insights query definition. A query
definition contains details about a saved CloudWatch Logs Insights
query.

Each `delete_query_definition` operation can delete one query
definition.

You must have the `logs:DeleteQueryDefinition` permission to be able to
perform this operation.

### Usage

    cloudwatchlogs_delete_query_definition(queryDefinitionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_delete_query_definition_:_queryDefinitionId">queryDefinitionId</code></td>
<td><p>[required] The ID of the query definition that you want to
delete. You can use <code>describe_query_definitions</code> to retrieve
the IDs of your saved query definitions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      success = TRUE|FALSE
    )

### Request syntax

    svc$delete_query_definition(
      queryDefinitionId = "string"
    )
