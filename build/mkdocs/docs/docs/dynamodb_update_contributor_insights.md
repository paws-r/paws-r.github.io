<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_update_contributor_insights</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the status for contributor insights for a specific table or index

### Description

Updates the status for contributor insights for a specific table or
index. CloudWatch Contributor Insights for DynamoDB graphs display the
partition key and (if applicable) sort key of frequently accessed items
and frequently throttled items in plaintext. If you require the use of
Amazon Web Services Key Management Service (KMS) to encrypt this table’s
partition key and sort key data with an Amazon Web Services managed key
or customer managed key, you should not enable CloudWatch Contributor
Insights for DynamoDB for this table.

### Usage

    dynamodb_update_contributor_insights(TableName, IndexName,
      ContributorInsightsAction)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_update_contributor_insights_:_TableName">TableName</code></td>
<td><p>[required] The name of the table.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_update_contributor_insights_:_IndexName">IndexName</code></td>
<td><p>The global secondary index name, if applicable.</p></td>
</tr>
<tr class="odd">
<td><code
id="dynamodb_update_contributor_insights_:_ContributorInsightsAction">ContributorInsightsAction</code></td>
<td><p>[required] Represents the contributor insights action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TableName = "string",
      IndexName = "string",
      ContributorInsightsStatus = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"FAILED"
    )

### Request syntax

    svc$update_contributor_insights(
      TableName = "string",
      IndexName = "string",
      ContributorInsightsAction = "ENABLE"|"DISABLE"
    )
