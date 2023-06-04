<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_usage_for_license_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time

### Description

Lists all license usage records for a license configuration, displaying
license consumption details by resource at a selected point in time. Use
this action to audit the current license consumption for any license
inventory and configuration.

### Usage

    licensemanager_list_usage_for_license_configuration(
      LicenseConfigurationArn, MaxResults, NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_list_usage_for_license_configuration_:_LicenseConfigurationArn">LicenseConfigurationArn</code></td>
<td><p>[required] Amazon Resource Name (ARN) of the license
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_usage_for_license_configuration_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_usage_for_license_configuration_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_usage_for_license_configuration_:_Filters">Filters</code></td>
<td><p>Filters to scope the results. The following filters and logical
operators are supported:</p>
<ul>
<li><p><code>resourceArn</code> - The ARN of the license configuration
resource. Logical operators are <code>EQUALS</code> |
<code>NOT_EQUALS</code>.</p></li>
<li><p><code>resourceType</code> - The resource type
(<code>EC2_INSTANCE</code> | <code>EC2_HOST</code> |
<code>EC2_AMI</code> | <code>SYSTEMS_MANAGER_MANAGED_INSTANCE</code>).
Logical operators are <code>EQUALS</code> |
<code>NOT_EQUALS</code>.</p></li>
<li><p><code>resourceAccount</code> - The ID of the account that owns
the resource. Logical operators are <code>EQUALS</code> |
<code>NOT_EQUALS</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseConfigurationUsageList = list(
        list(
          ResourceArn = "string",
          ResourceType = "EC2_INSTANCE"|"EC2_HOST"|"EC2_AMI"|"RDS"|"SYSTEMS_MANAGER_MANAGED_INSTANCE",
          ResourceStatus = "string",
          ResourceOwnerId = "string",
          AssociationTime = as.POSIXct(
            "2015-01-01"
          ),
          ConsumedLicenses = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_usage_for_license_configuration(
      LicenseConfigurationArn = "string",
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
