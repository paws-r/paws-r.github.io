<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_describe_report_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all report plans for an Amazon Web Services account and Amazon Web Services Region

### Description

Returns a list of all report plans for an Amazon Web Services account
and Amazon Web Services Region.

### Usage

    backup_describe_report_plan(ReportPlanName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_describe_report_plan_:_ReportPlanName">ReportPlanName</code></td>
<td><p>[required] The unique name of a report plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReportPlan = list(
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
    )

### Request syntax

    svc$describe_report_plan(
      ReportPlanName = "string"
    )
