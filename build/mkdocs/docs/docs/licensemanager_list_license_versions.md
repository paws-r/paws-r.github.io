<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_license_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all versions of the specified license

### Description

Lists all versions of the specified license.

### Usage

    licensemanager_list_license_versions(LicenseArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_list_license_versions_:_LicenseArn">LicenseArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_license_versions_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_license_versions_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Licenses = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_license_versions(
      LicenseArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
