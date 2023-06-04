<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_search_data_sources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use the SearchDataSources operation to search for data sources that belong to an account

### Description

Use the `search_data_sources` operation to search for data sources that
belong to an account.

### Usage

    quicksight_search_data_sources(AwsAccountId, Filters, NextToken,
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
id="quicksight_search_data_sources_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_search_data_sources_:_Filters">Filters</code></td>
<td><p>[required] The filters to apply to the search.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_search_data_sources_:_NextToken">NextToken</code></td>
<td><p>A pagination token that can be used in a subsequent
request.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_search_data_sources_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataSourceSummaries = list(
        list(
          Arn = "string",
          DataSourceId = "string",
          Name = "string",
          Type = "ADOBE_ANALYTICS"|"AMAZON_ELASTICSEARCH"|"ATHENA"|"AURORA"|"AURORA_POSTGRESQL"|"AWS_IOT_ANALYTICS"|"GITHUB"|"JIRA"|"MARIADB"|"MYSQL"|"ORACLE"|"POSTGRESQL"|"PRESTO"|"REDSHIFT"|"S3"|"SALESFORCE"|"SERVICENOW"|"SNOWFLAKE"|"SPARK"|"SQLSERVER"|"TERADATA"|"TWITTER"|"TIMESTREAM"|"AMAZON_OPENSEARCH"|"EXASOL"|"DATABRICKS",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string",
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$search_data_sources(
      AwsAccountId = "string",
      Filters = list(
        list(
          Operator = "StringEquals"|"StringLike",
          Name = "DIRECT_QUICKSIGHT_VIEWER_OR_OWNER"|"DIRECT_QUICKSIGHT_OWNER"|"DIRECT_QUICKSIGHT_SOLE_OWNER"|"DATASOURCE_NAME",
          Value = "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
