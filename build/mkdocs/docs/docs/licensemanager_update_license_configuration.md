<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_update_license_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the attributes of an existing license configuration

### Description

Modifies the attributes of an existing license configuration.

### Usage

    licensemanager_update_license_configuration(LicenseConfigurationArn,
      LicenseConfigurationStatus, LicenseRules, LicenseCount,
      LicenseCountHardLimit, Name, Description, ProductInformationList,
      DisassociateWhenNotFound)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_update_license_configuration_:_LicenseConfigurationArn">LicenseConfigurationArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_update_license_configuration_:_LicenseConfigurationStatus">LicenseConfigurationStatus</code></td>
<td><p>New status of the license configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_update_license_configuration_:_LicenseRules">LicenseRules</code></td>
<td><p>New license rule. The only rule that you can add after you create
a license configuration is licenseAffinityToHost.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_update_license_configuration_:_LicenseCount">LicenseCount</code></td>
<td><p>New number of licenses managed by the license
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_update_license_configuration_:_LicenseCountHardLimit">LicenseCountHardLimit</code></td>
<td><p>New hard limit of the number of available licenses.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_update_license_configuration_:_Name">Name</code></td>
<td><p>New name of the license configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_update_license_configuration_:_Description">Description</code></td>
<td><p>New description of the license configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_update_license_configuration_:_ProductInformationList">ProductInformationList</code></td>
<td><p>New product information.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_update_license_configuration_:_DisassociateWhenNotFound">DisassociateWhenNotFound</code></td>
<td><p>When true, disassociates a resource when software is
uninstalled.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_license_configuration(
      LicenseConfigurationArn = "string",
      LicenseConfigurationStatus = "AVAILABLE"|"DISABLED",
      LicenseRules = list(
        "string"
      ),
      LicenseCount = 123,
      LicenseCountHardLimit = TRUE|FALSE,
      Name = "string",
      Description = "string",
      ProductInformationList = list(
        list(
          ResourceType = "string",
          ProductInformationFilterList = list(
            list(
              ProductInformationFilterName = "string",
              ProductInformationFilterValue = list(
                "string"
              ),
              ProductInformationFilterComparator = "string"
            )
          )
        )
      ),
      DisassociateWhenNotFound = TRUE|FALSE
    )
