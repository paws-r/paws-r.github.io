<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_create_license_conversion_task_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new license conversion task

### Description

Creates a new license conversion task.

### Usage

    licensemanager_create_license_conversion_task_for_resource(ResourceArn,
      SourceLicenseContext, DestinationLicenseContext)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_create_license_conversion_task_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the resource you are
converting the license type for.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_conversion_task_for_resource_:_SourceLicenseContext">SourceLicenseContext</code></td>
<td><p>[required] Information that identifies the license type you are
converting from. For the structure of the source license, see <a
href="https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli">Convert
a license type using the CLI</a> in the <em>License Manager User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_conversion_task_for_resource_:_DestinationLicenseContext">DestinationLicenseContext</code></td>
<td><p>[required] Information that identifies the license type you are
converting to. For the structure of the destination license, see <a
href="https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli">Convert
a license type using the CLI</a> in the <em>License Manager User
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseConversionTaskId = "string"
    )

### Request syntax

    svc$create_license_conversion_task_for_resource(
      ResourceArn = "string",
      SourceLicenseContext = list(
        UsageOperation = "string"
      ),
      DestinationLicenseContext = list(
        UsageOperation = "string"
      )
    )
