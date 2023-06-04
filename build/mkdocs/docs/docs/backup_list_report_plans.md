<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_list_report_plans</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of your report plans

### Description

Returns a list of your report plans. For detailed information about a
single report plan, use `describe_report_plan`.

### Usage

    backup_list_report_plans(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_list_report_plans_:_MaxResults">MaxResults</code></td>
<td><p>The number of desired results from 1 to 1000. Optional. If
unspecified, the query will return 1 MB of data.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_list_report_plans_:_NextToken">NextToken</code></td>
<td><p>An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReportPlans = list(
        list(
          ReportPlanArn = "string",
          ReportPlanName = "string",
          ReportPlanDescription = "string",
          ReportSetting = list(
            ReportTemplate = "string",
            FrameworkArns = list(
              "string"
            ),
            NumberOfFrameworks = 123,
            Accounts = list(
              "string"
            ),
            OrganizationUnits = list(
              "string"
            ),
            Regions = list(
              "string"
            )
          ),
          ReportDeliveryChannel = list(
            S3BucketName = "string",
            S3KeyPrefix = "string",
            Formats = list(
              "string"
            )
          ),
          DeploymentStatus = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastAttemptedExecutionTime = as.POSIXct(
            "2015-01-01"
          ),
          LastSuccessfulExecutionTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_report_plans(
      MaxResults = 123,
      NextToken = "string"
    )
