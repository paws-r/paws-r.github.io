<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_check_in_license</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Checks in the specified license

### Description

Checks in the specified license. Check in a license when it is no longer
in use.

### Usage

    licensemanager_check_in_license(LicenseConsumptionToken, Beneficiary)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_check_in_license_:_LicenseConsumptionToken">LicenseConsumptionToken</code></td>
<td><p>[required] License consumption token.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_check_in_license_:_Beneficiary">Beneficiary</code></td>
<td><p>License beneficiary.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$check_in_license(
      LicenseConsumptionToken = "string",
      Beneficiary = "string"
    )
