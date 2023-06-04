<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_get_license</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets detailed information about the specified license

### Description

Gets detailed information about the specified license.

### Usage

    licensemanager_get_license(LicenseArn, Version)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_get_license_:_LicenseArn">LicenseArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license.</p></td>
</tr>
<tr class="even">
<td><code id="licensemanager_get_license_:_Version">Version</code></td>
<td><p>License version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      License = list(
        LicenseArn = "string",
        LicenseName = "string",
        ProductName = "string",
        ProductSKU = "string",
        Issuer = list(
          Name = "string",
          SignKey = "string",
          KeyFingerprint = "string"
        ),
        HomeRegion = "string",
        Status = "AVAILABLE"|"PENDING_AVAILABLE"|"DEACTIVATED"|"SUSPENDED"|"EXPIRED"|"PENDING_DELETE"|"DELETED",
        Validity = list(
          Begin = "string",
          End = "string"
        ),
        Beneficiary = "string",
        Entitlements = list(
          list(
            Name = "string",
            Value = "string",
            MaxCount = 123,
            Overage = TRUE|FALSE,
            Unit = "Count"|"None"|"Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second",
            AllowCheckIn = TRUE|FALSE
          )
        ),
        ConsumptionConfiguration = list(
          RenewType = "None"|"Weekly"|"Monthly",
          ProvisionalConfiguration = list(
            MaxTimeToLiveInMinutes = 123
          ),
          BorrowConfiguration = list(
            AllowEarlyCheckIn = TRUE|FALSE,
            MaxTimeToLiveInMinutes = 123
          )
        ),
        LicenseMetadata = list(
          list(
            Name = "string",
            Value = "string"
          )
        ),
        CreateTime = "string",
        Version = "string"
      )
    )

### Request syntax

    svc$get_license(
      LicenseArn = "string",
      Version = "string"
    )
