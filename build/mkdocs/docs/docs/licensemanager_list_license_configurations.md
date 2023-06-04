<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_license_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the license configurations for your account

### Description

Lists the license configurations for your account.

### Usage

    licensemanager_list_license_configurations(LicenseConfigurationArns,
      MaxResults, NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_list_license_configurations_:_LicenseConfigurationArns">LicenseConfigurationArns</code></td>
<td><p>Amazon Resource Names (ARN) of the license
configurations.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_license_configurations_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_license_configurations_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_license_configurations_:_Filters">Filters</code></td>
<td><p>Filters to scope the results. The following filters and logical
operators are supported:</p>
<ul>
<li><p><code>licenseCountingType</code> - The dimension for which
licenses are counted. Possible values are <code>vCPU</code> |
<code>Instance</code> | <code>Core</code> | <code>Socket</code>. Logical
operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p></li>
<li><p><code>enforceLicenseCount</code> - A Boolean value that indicates
whether hard license enforcement is used. Logical operators are
<code>EQUALS</code> | <code>NOT_EQUALS</code>.</p></li>
<li><p><code>usagelimitExceeded</code> - A Boolean value that indicates
whether the available licenses have been exceeded. Logical operators are
<code>EQUALS</code> | <code>NOT_EQUALS</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseConfigurations = list(
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
          DisassociateWhenNotFound = TRUE|FALSE,
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
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_license_configurations(
      LicenseConfigurationArns = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )
