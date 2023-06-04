<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_license_manager_report_generators</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the report generators for your account

### Description

Lists the report generators for your account.

### Usage

    licensemanager_list_license_manager_report_generators(Filters,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_list_license_manager_report_generators_:_Filters">Filters</code></td>
<td><p>Filters to scope the results. The following filters are
supported:</p>
<ul>
<li><p><code>LicenseConfigurationArn</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_license_manager_report_generators_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_license_manager_report_generators_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReportGenerators = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_license_manager_report_generators(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
