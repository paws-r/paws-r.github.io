<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_associations_for_license_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the resource associations for the specified license configuration

### Description

Lists the resource associations for the specified license configuration.

Resource associations need not consume licenses from a license
configuration. For example, an AMI or a stopped instance might not
consume a license (depending on the license rules).

### Usage

    licensemanager_list_associations_for_license_configuration(
      LicenseConfigurationArn, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_list_associations_for_license_configuration_:_LicenseConfigurationArn">LicenseConfigurationArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of a license
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_associations_for_license_configuration_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_associations_for_license_configuration_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseConfigurationAssociations = list(
        list(
          ResourceArn = "string",
          ResourceType = "EC2_INSTANCE"|"EC2_HOST"|"EC2_AMI"|"RDS"|"SYSTEMS_MANAGER_MANAGED_INSTANCE",
          ResourceOwnerId = "string",
          AssociationTime = as.POSIXct(
            "2015-01-01"
          ),
          AmiAssociationScope = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_associations_for_license_configuration(
      LicenseConfigurationArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
