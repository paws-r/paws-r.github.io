<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_get_license_conversion_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified license type conversion task

### Description

Gets information about the specified license type conversion task.

### Usage

    licensemanager_get_license_conversion_task(LicenseConversionTaskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_get_license_conversion_task_:_LicenseConversionTaskId">LicenseConversionTaskId</code></td>
<td><p>[required] ID of the license type conversion task to retrieve
information on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseConversionTaskId = "string",
      ResourceArn = "string",
      SourceLicenseContext = list(
        UsageOperation = "string"
      ),
      DestinationLicenseContext = list(
        UsageOperation = "string"
      ),
      StatusMessage = "string",
      Status = "IN_PROGRESS"|"SUCCEEDED"|"FAILED",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      LicenseConversionTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_license_conversion_task(
      LicenseConversionTaskId = "string"
    )
