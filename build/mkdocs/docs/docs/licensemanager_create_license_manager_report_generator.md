<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_create_license_manager_report_generator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a report generator

### Description

Creates a report generator.

### Usage

    licensemanager_create_license_manager_report_generator(
      ReportGeneratorName, Type, ReportContext, ReportFrequency, ClientToken,
      Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_create_license_manager_report_generator_:_ReportGeneratorName">ReportGeneratorName</code></td>
<td><p>[required] Name of the report generator.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_manager_report_generator_:_Type">Type</code></td>
<td><p>[required] Type of reports to generate. The following report
types an be generated:</p>
<ul>
<li><p>License configuration report - Reports the number and details of
consumed licenses for a license configuration.</p></li>
<li><p>Resource report - Reports the tracked licenses and resource
consumption for a license configuration.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_manager_report_generator_:_ReportContext">ReportContext</code></td>
<td><p>[required] Defines the type of license configuration the report
generator tracks.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_manager_report_generator_:_ReportFrequency">ReportFrequency</code></td>
<td><p>[required] Frequency by which reports are generated. Reports can
be generated daily, monthly, or weekly.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_manager_report_generator_:_ClientToken">ClientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_manager_report_generator_:_Description">Description</code></td>
<td><p>Description of the report generator.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_manager_report_generator_:_Tags">Tags</code></td>
<td><p>Tags to add to the report generator.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseManagerReportGeneratorArn = "string"
    )

### Request syntax

    svc$create_license_manager_report_generator(
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
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
