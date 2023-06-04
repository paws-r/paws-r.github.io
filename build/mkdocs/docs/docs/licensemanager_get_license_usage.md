<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_get_license_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets detailed information about the usage of the specified license

### Description

Gets detailed information about the usage of the specified license.

### Usage

    licensemanager_get_license_usage(LicenseArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_get_license_usage_:_LicenseArn">LicenseArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseUsage = list(
        EntitlementUsages = list(
          list(
            Name = "string",
            ConsumedValue = "string",
            MaxCount = "string",
            Unit = "Count"|"None"|"Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"
          )
        )
      )
    )

### Request syntax

    svc$get_license_usage(
      LicenseArn = "string"
    )
