<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_extend_license_consumption</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Extends the expiration date for license consumption

### Description

Extends the expiration date for license consumption.

### Usage

    licensemanager_extend_license_consumption(LicenseConsumptionToken,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_extend_license_consumption_:_LicenseConsumptionToken">LicenseConsumptionToken</code></td>
<td><p>[required] License consumption token.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_extend_license_consumption_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request. Provides an error response if you
do not have the required permissions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseConsumptionToken = "string",
      Expiration = "string"
    )

### Request syntax

    svc$extend_license_consumption(
      LicenseConsumptionToken = "string",
      DryRun = TRUE|FALSE
    )
