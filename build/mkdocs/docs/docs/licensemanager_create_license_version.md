<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_create_license_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new version of the specified license

### Description

Creates a new version of the specified license.

### Usage

    licensemanager_create_license_version(LicenseArn, LicenseName,
      ProductName, Issuer, HomeRegion, Validity, LicenseMetadata,
      Entitlements, ConsumptionConfiguration, Status, ClientToken,
      SourceVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_create_license_version_:_LicenseArn">LicenseArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_version_:_LicenseName">LicenseName</code></td>
<td><p>[required] License name.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_version_:_ProductName">ProductName</code></td>
<td><p>[required] Product name.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_version_:_Issuer">Issuer</code></td>
<td><p>[required] License issuer.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_version_:_HomeRegion">HomeRegion</code></td>
<td><p>[required] Home Region of the license.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_version_:_Validity">Validity</code></td>
<td><p>[required] Date and time range during which the license is valid,
in ISO8601-UTC format.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_version_:_LicenseMetadata">LicenseMetadata</code></td>
<td><p>Information about the license.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_version_:_Entitlements">Entitlements</code></td>
<td><p>[required] License entitlements.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_version_:_ConsumptionConfiguration">ConsumptionConfiguration</code></td>
<td><p>[required] Configuration for consumption of the license. Choose a
provisional configuration for workloads running with continuous
connectivity. Choose a borrow configuration for workloads with offline
usage.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_version_:_Status">Status</code></td>
<td><p>[required] License status.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_version_:_ClientToken">ClientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_version_:_SourceVersion">SourceVersion</code></td>
<td><p>Current version of the license.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseArn = "string",
      Version = "string",
      Status = "AVAILABLE"|"PENDING_AVAILABLE"|"DEACTIVATED"|"SUSPENDED"|"EXPIRED"|"PENDING_DELETE"|"DELETED"
    )

### Request syntax

    svc$create_license_version(
      LicenseArn = "string",
      LicenseName = "string",
      ProductName = "string",
      Issuer = list(
        Name = "string",
        SignKey = "string"
      ),
      HomeRegion = "string",
      Validity = list(
        Begin = "string",
        End = "string"
      ),
      LicenseMetadata = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
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
      Status = "AVAILABLE"|"PENDING_AVAILABLE"|"DEACTIVATED"|"SUSPENDED"|"EXPIRED"|"PENDING_DELETE"|"DELETED",
      ClientToken = "string",
      SourceVersion = "string"
    )
