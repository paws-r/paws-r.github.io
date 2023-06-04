<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_data_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the datasets belonging to the current Amazon Web Services account in an Amazon Web Services Region

### Description

Lists all of the datasets belonging to the current Amazon Web Services
account in an Amazon Web Services Region.

The permissions resource is
`⁠arn:aws:quicksight:region:aws-account-id:dataset/*⁠`.

### Usage

    quicksight_list_data_sets(AwsAccountId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_data_sets_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_data_sets_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_data_sets_:_MaxResults">MaxResults</code></td>
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
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$list_data_sets(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123
    )
