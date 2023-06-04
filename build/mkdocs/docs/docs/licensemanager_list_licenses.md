<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_licenses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the licenses for your account

### Description

Lists the licenses for your account.

### Usage

    licensemanager_list_licenses(LicenseArns, Filters, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_list_licenses_:_LicenseArns">LicenseArns</code></td>
<td><p>Amazon Resource Names (ARNs) of the licenses.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_licenses_:_Filters">Filters</code></td>
<td><p>Filters to scope the results. The following filters are
supported:</p>
<ul>
<li><p><code>Beneficiary</code></p></li>
<li><p><code>ProductSKU</code></p></li>
<li><p><code>Fingerprint</code></p></li>
<li><p><code>Status</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_licenses_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_licenses_:_MaxResults">MaxResults</code></td>
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

    svc$list_licenses(
      LicenseArns = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
