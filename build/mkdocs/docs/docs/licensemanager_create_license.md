<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_create_license</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a license

### Description

Creates a license.

### Usage

    licensemanager_create_license(LicenseName, ProductName, ProductSKU,
      Issuer, HomeRegion, Validity, Entitlements, Beneficiary,
      ConsumptionConfiguration, LicenseMetadata, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_create_license_:_LicenseName">LicenseName</code></td>
<td><p>[required] License name.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_:_ProductName">ProductName</code></td>
<td><p>[required] Product name.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_:_ProductSKU">ProductSKU</code></td>
<td><p>[required] Product SKU.</p></td>
</tr>
<tr class="even">
<td><code id="licensemanager_create_license_:_Issuer">Issuer</code></td>
<td><p>[required] License issuer.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_:_HomeRegion">HomeRegion</code></td>
<td><p>[required] Home Region for the license.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_:_Validity">Validity</code></td>
<td><p>[required] Date and time range during which the license is valid,
in ISO8601-UTC format.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_:_Entitlements">Entitlements</code></td>
<td><p>[required] License entitlements.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_:_Beneficiary">Beneficiary</code></td>
<td><p>[required] License beneficiary.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_:_ConsumptionConfiguration">ConsumptionConfiguration</code></td>
<td><p>[required] Configuration for consumption of the license. Choose a
provisional configuration for workloads running with continuous
connectivity. Choose a borrow configuration for workloads with offline
usage.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_:_LicenseMetadata">LicenseMetadata</code></td>
<td><p>Information about the license.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_:_ClientToken">ClientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseArn = "string",
      Status = "AVAILABLE"|"PENDING_AVAILABLE"|"DEACTIVATED"|"SUSPENDED"|"EXPIRED"|"PENDING_DELETE"|"DELETED",
      Version = "string"
    )

### Request syntax

    svc$create_license(
      LicenseName = "string",
      ProductName = "string",
      ProductSKU = "string",
      Issuer = list(
        Name = "string",
        SignKey = "string"
      ),
      HomeRegion = "string",
      Validity = list(
        Begin = "string",
        End = "string"
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
      Beneficiary = "string",
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
      ClientToken = "string"
    )
