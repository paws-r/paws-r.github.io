<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_get_license_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets detailed information about the specified license configuration

### Description

Gets detailed information about the specified license configuration.

### Usage

    licensemanager_get_license_configuration(LicenseConfigurationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_get_license_configuration_:_LicenseConfigurationArn">LicenseConfigurationArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseConfigurationId = "string",
      LicenseConfigurationArn = "string",
      Name = "string",
      Description = "string",
      LicenseCountingType = "vCPU"|"Instance"|"Core"|"Socket",
      LicenseRules = list(
        "string"
      ),
      LicenseCount = 123,
      LicenseCountHardLimit = TRUE|FALSE,
      ConsumedLicenses = 123,
      Status = "string",
      OwnerAccountId = "string",
      ConsumedLicenseSummaryList = list(
        list(
          ResourceType = "EC2_INSTANCE"|"EC2_HOST"|"EC2_AMI"|"RDS"|"SYSTEMS_MANAGER_MANAGED_INSTANCE",
          ConsumedLicenses = 123
        )
      ),
      ManagedResourceSummaryList = list(
        list(
          ResourceType = "EC2_INSTANCE"|"EC2_HOST"|"EC2_AMI"|"RDS"|"SYSTEMS_MANAGER_MANAGED_INSTANCE",
          AssociationCount = 123
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
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
      AutomatedDiscoveryInformation = list(
        LastRunTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      DisassociateWhenNotFound = TRUE|FALSE
    )

### Request syntax

    svc$get_license_configuration(
      LicenseConfigurationArn = "string"
    )
