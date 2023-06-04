<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_update_license_manager_report_generator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a report generator

### Description

Updates a report generator.

After you make changes to a report generator, it starts generating new
reports within 60 minutes of being updated.

### Usage

    licensemanager_update_license_manager_report_generator(
      LicenseManagerReportGeneratorArn, ReportGeneratorName, Type,
      ReportContext, ReportFrequency, ClientToken, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_update_license_manager_report_generator_:_LicenseManagerReportGeneratorArn">LicenseManagerReportGeneratorArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the report generator to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_update_license_manager_report_generator_:_ReportGeneratorName">ReportGeneratorName</code></td>
<td><p>[required] Name of the report generator.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_update_license_manager_report_generator_:_Type">Type</code></td>
<td><p>[required] Type of reports to generate. The following report
types are supported:</p>
<ul>
<li><p>License configuration report - Reports the number and details of
consumed licenses for a license configuration.</p></li>
<li><p>Resource report - Reports the tracked licenses and resource
consumption for a license configuration.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_update_license_manager_report_generator_:_ReportContext">ReportContext</code></td>
<td><p>[required] The report context.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_update_license_manager_report_generator_:_ReportFrequency">ReportFrequency</code></td>
<td><p>[required] Frequency by which reports are generated.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_update_license_manager_report_generator_:_ClientToken">ClientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_update_license_manager_report_generator_:_Description">Description</code></td>
<td><p>Description of the report generator.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_license_manager_report_generator(
      LicenseManagerReportGeneratorArn = "string",
      ReportGeneratorName = "string",
      Type = list(
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
      ClientToken = "string",
      Description = "string"
    )
