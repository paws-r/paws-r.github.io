<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_search_data_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use the SearchDataSets operation to search for datasets that belong to an account

### Description

Use the `search_data_sets` operation to search for datasets that belong
to an account.

### Usage

    quicksight_search_data_sets(AwsAccountId, Filters, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_search_data_sets_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_search_data_sets_:_Filters">Filters</code></td>
<td><p>[required] The filters to apply to the search.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_search_data_sets_:_NextToken">NextToken</code></td>
<td><p>A pagination token that can be used in a subsequent
request.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_search_data_sets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataSetSummaries = list(
        list(
          Arn = "string",
          DataSetId = "string",
          Name = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          ImportMode = "SPICE"|"DIRECT_QUERY",
          RowLevelPermissionDataSet = list(
            Namespace = "string",
            Arn = "string",
            PermissionPolicy = "GRANT_ACCESS"|"DENY_ACCESS",
            FormatVersion = "VERSION_1"|"VERSION_2",
            Status = "ENABLED"|"DISABLED"
          ),
          RowLevelPermissionTagConfigurationApplied = TRUE|FALSE,
          ColumnLevelPermissionRulesApplied = TRUE|FALSE
        )
      ),
      NextToken = "string",
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$search_data_sets(
      AwsAccountId = "string",
      Filters = list(
        list(
          Operator = "StringEquals"|"StringLike",
          Name = "QUICKSIGHT_VIEWER_OR_OWNER"|"QUICKSIGHT_OWNER"|"DIRECT_QUICKSIGHT_VIEWER_OR_OWNER"|"DIRECT_QUICKSIGHT_OWNER"|"DIRECT_QUICKSIGHT_SOLE_OWNER"|"DATASET_NAME",
          Value = "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
