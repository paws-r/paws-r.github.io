<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_describe_contributor_insights</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about contributor insights for a given table or global secondary index

### Description

Returns information about contributor insights for a given table or
global secondary index.

### Usage

    dynamodb_describe_contributor_insights(TableName, IndexName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_describe_contributor_insights_:_TableName">TableName</code></td>
<td><p>[required] The name of the table to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_describe_contributor_insights_:_IndexName">IndexName</code></td>
<td><p>The name of the global secondary index to describe, if
applicable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TableName = "string",
      IndexName = "string",
      ContributorInsightsRuleList = list(
        "string"
      ),
      ContributorInsightsStatus = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"FAILED",
      LastUpdateDateTime = as.POSIXct(
        "2015-01-01"
      ),
      FailureException = list(
        ExceptionName = "string",
        ExceptionDescription = "string"
      )
    )

### Request syntax

    svc$describe_contributor_insights(
      TableName = "string",
      IndexName = "string"
    )
