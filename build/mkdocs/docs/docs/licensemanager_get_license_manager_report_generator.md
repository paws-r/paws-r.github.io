<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_get_license_manager_report_generator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified report generator

### Description

Gets information about the specified report generator.

### Usage

    licensemanager_get_license_manager_report_generator(
      LicenseManagerReportGeneratorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_get_license_manager_report_generator_:_LicenseManagerReportGeneratorArn">LicenseManagerReportGeneratorArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the report
generator.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReportGenerator = list(
        ReportGeneratorName = "string",
        ReportType = list(
          "LicenseConfigurationSummaryReport"|"LicenseConfigurationUsageReport"
        ),
        ReportContext = list(
          licenseConfigurationArns = list(
            "string"
          )
        ),
        ReportFrequency = list(
          value = 123,
          period = "DAY"|"WEEK"|"MONTH"
        ),
        LicenseManagerReportGeneratorArn = "string",
        LastRunStatus = "string",
        LastRunFailureReason = "string",
        LastReportGenerationTime = "string",
        ReportCreatorAccount = "string",
        Description = "string",
        S3Location = list(
          bucket = "string",
          keyPrefix = "string"
        ),
        CreateTime = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_license_manager_report_generator(
      LicenseManagerReportGeneratorArn = "string"
    )
