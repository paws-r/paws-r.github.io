<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_delete_license_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified license configuration

### Description

Deletes the specified license configuration.

You cannot delete a license configuration that is in use.

### Usage

    licensemanager_delete_license_configuration(LicenseConfigurationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_delete_license_configuration_:_LicenseConfigurationArn">LicenseConfigurationArn</code></td>
<td><p>[required] ID of the license configuration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_license_configuration(
      LicenseConfigurationArn = "string"
    )
