<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_update_report_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing report plan identified by its ReportPlanName with the input document in JSON format

### Description

Updates an existing report plan identified by its `ReportPlanName` with
the input document in JSON format.

### Usage

    backup_update_report_plan(ReportPlanName, ReportPlanDescription,
      ReportDeliveryChannel, ReportSetting, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_update_report_plan_:_ReportPlanName">ReportPlanName</code></td>
<td><p>[required] The unique name of the report plan. This name is
between 1 and 256 characters, starting with a letter, and consisting of
letters (a-z, A-Z), numbers (0-9), and underscores (_).</p></td>
</tr>
<tr class="even">
<td><code
id="backup_update_report_plan_:_ReportPlanDescription">ReportPlanDescription</code></td>
<td><p>An optional description of the report plan with a maximum 1,024
characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_update_report_plan_:_ReportDeliveryChannel">ReportDeliveryChannel</code></td>
<td><p>A structure that contains information about where to deliver your
reports, specifically your Amazon S3 bucket name, S3 key prefix, and the
formats of your reports.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_update_report_plan_:_ReportSetting">ReportSetting</code></td>
<td><p>Identifies the report template for the report. Reports are built
using a report template. The report templates are:</p>
<p><code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT</code></p>
<p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
<code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes
the report coverage by Amazon Web Services Regions and
frameworks.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_update_report_plan_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A customer-chosen string that you can use to distinguish between
otherwise identical calls to <code>UpdateReportPlanInput</code>.
Retrying a successful request with the same idempotency token results in
a success message with no action taken.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReportPlanName = "string",
      ReportPlanArn = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_report_plan(
      ReportPlanName = "string",
      ReportPlanDescription = "string",
      ReportDeliveryChannel = list(
        S3BucketName = "string",
        S3KeyPrefix = "string",
        Formats = list(
          "string"
        )
      ),
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
      IdempotencyToken = "string"
    )
