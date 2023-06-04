<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_delete_license_manager_report_generator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified report generator

### Description

Deletes the specified report generator.

This action deletes the report generator, which stops it from generating
future reports. The action cannot be reversed. It has no effect on the
previous reports from this generator.

### Usage

    licensemanager_delete_license_manager_report_generator(
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
id="licensemanager_delete_license_manager_report_generator_:_LicenseManagerReportGeneratorArn">LicenseManagerReportGeneratorArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the report generator to
be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_license_manager_report_generator(
      LicenseManagerReportGeneratorArn = "string"
    )
