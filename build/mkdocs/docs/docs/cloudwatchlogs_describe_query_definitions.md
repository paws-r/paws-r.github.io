<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_describe_query_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns a paginated list of your saved CloudWatch Logs Insights query definitions

### Description

This operation returns a paginated list of your saved CloudWatch Logs
Insights query definitions.

You can use the `queryDefinitionNamePrefix` parameter to limit the
results to only the query definitions that have names that start with a
certain string.

### Usage

    cloudwatchlogs_describe_query_definitions(queryDefinitionNamePrefix,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_query_definitions_:_queryDefinitionNamePrefix">queryDefinitionNamePrefix</code></td>
<td><p>Use this parameter to filter your results to only the query
definitions that have names that start with the prefix you
specify.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_query_definitions_:_maxResults">maxResults</code></td>
<td><p>Limits the number of returned query definitions to the specified
number.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_query_definitions_:_nextToken">nextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      queryDefinitions = list(
        list(
          queryDefinitionId = "string",
          name = "string",
          queryString = "string",
          lastModified = 123,
          logGroupNames = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_query_definitions(
      queryDefinitionNamePrefix = "string",
      maxResults = 123,
      nextToken = "string"
    )
