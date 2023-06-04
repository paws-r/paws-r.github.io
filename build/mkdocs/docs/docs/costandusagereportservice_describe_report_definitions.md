<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costandusagereportservice_describe_report_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the AWS Cost and Usage reports available to this account

### Description

Lists the AWS Cost and Usage reports available to this account.

### Usage

    costandusagereportservice_describe_report_definitions(MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costandusagereportservice_describe_report_definitions_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="costandusagereportservice_describe_report_definitions_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReportDefinitions = list(
        list(
          ReportName = "string",
          TimeUnit = "HOURLY"|"DAILY"|"MONTHLY",
          Format = "textORcsv"|"Parquet",
          Compression = "ZIP"|"GZIP"|"Parquet",
          AdditionalSchemaElements = list(
            "RESOURCES"|"SPLIT_COST_ALLOCATION_DATA"
          ),
          S3Bucket = "string",
          S3Prefix = "string",
          S3Region = "af-south-1"|"ap-east-1"|"ap-south-1"|"ap-south-2"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"ca-central-1"|"eu-central-1"|"eu-central-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-north-1"|"eu-south-1"|"eu-south-2"|"me-central-1"|"me-south-1"|"sa-east-1"|"us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"cn-north-1"|"cn-northwest-1",
          AdditionalArtifacts = list(
            "REDSHIFT"|"QUICKSIGHT"|"ATHENA"
          ),
          RefreshClosedReports = TRUE|FALSE,
          ReportVersioning = "CREATE_NEW_REPORT"|"OVERWRITE_REPORT",
          BillingViewArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_report_definitions(
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # The following example lists the AWS Cost and Usage reports for the
    # account.
    svc$describe_report_definitions(
      MaxResults = 5L
    )

    ## End(Not run)
