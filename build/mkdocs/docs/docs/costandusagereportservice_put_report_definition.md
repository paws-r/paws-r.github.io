<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costandusagereportservice_put_report_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new report using the description that you provide

### Description

Creates a new report using the description that you provide.

### Usage

    costandusagereportservice_put_report_definition(ReportDefinition)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costandusagereportservice_put_report_definition_:_ReportDefinition">ReportDefinition</code></td>
<td><p>[required] Represents the output of the PutReportDefinition
operation. The content consists of the detailed metadata and data file
information.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_report_definition(
      ReportDefinition = list(
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
    )

### Examples

    ## Not run: 
    # The following example creates a AWS Cost and Usage report named
    # ExampleReport.
    svc$put_report_definition(
      ReportDefinition = list(
        AdditionalArtifacts = list(
          "REDSHIFT",
          "QUICKSIGHT"
        ),
        AdditionalSchemaElements = list(
          "RESOURCES"
        ),
        Compression = "ZIP",
        Format = "textORcsv",
        ReportName = "ExampleReport",
        S3Bucket = "example-s3-bucket",
        S3Prefix = "exampleprefix",
        S3Region = "us-east-1",
        TimeUnit = "DAILY"
      )
    )

    ## End(Not run)
