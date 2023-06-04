<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_create_license_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a license configuration

### Description

Creates a license configuration.

A license configuration is an abstraction of a customer license
agreement that can be consumed and enforced by License Manager.
Components include specifications for the license type (licensing by
instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy,
Dedicated Instance, Dedicated Host, or all of these), license affinity
to host (how long a license must be associated with a host), and the
number of licenses purchased and used.

### Usage

    licensemanager_create_license_configuration(Name, Description,
      LicenseCountingType, LicenseCount, LicenseCountHardLimit, LicenseRules,
      Tags, DisassociateWhenNotFound, ProductInformationList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_create_license_configuration_:_Name">Name</code></td>
<td><p>[required] Name of the license configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_configuration_:_Description">Description</code></td>
<td><p>Description of the license configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_configuration_:_LicenseCountingType">LicenseCountingType</code></td>
<td><p>[required] Dimension used to track the license
inventory.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_configuration_:_LicenseCount">LicenseCount</code></td>
<td><p>Number of licenses managed by the license configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_configuration_:_LicenseCountHardLimit">LicenseCountHardLimit</code></td>
<td><p>Indicates whether hard or soft license enforcement is used.
Exceeding a hard limit blocks the launch of new instances.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_configuration_:_LicenseRules">LicenseRules</code></td>
<td><p>License rules. The syntax is #name=value (for example,
#allowedTenancy=EC2-DedicatedHost). The available rules vary by
dimension, as follows.</p>
<ul>
<li><p><code>Cores</code> dimension: <code>allowedTenancy</code> |
<code>licenseAffinityToHost</code> | <code>maximumCores</code> |
<code>minimumCores</code></p></li>
<li><p><code>Instances</code> dimension: <code>allowedTenancy</code> |
<code>maximumCores</code> | <code>minimumCores</code> |
<code>maximumSockets</code> | <code>minimumSockets</code> |
<code>maximumVcpus</code> | <code>minimumVcpus</code></p></li>
<li><p><code>Sockets</code> dimension: <code>allowedTenancy</code> |
<code>licenseAffinityToHost</code> | <code>maximumSockets</code> |
<code>minimumSockets</code></p></li>
<li><p><code>vCPUs</code> dimension: <code>allowedTenancy</code> |
<code>honorVcpuOptimization</code> | <code>maximumVcpus</code> |
<code>minimumVcpus</code></p></li>
</ul>
<p>The unit for <code>licenseAffinityToHost</code> is days and the range
is 1 to 180. The possible values for <code>allowedTenancy</code> are
<code>EC2-Default</code>, <code>EC2-DedicatedHost</code>, and
<code>EC2-DedicatedInstance</code>. The possible values for
<code>honorVcpuOptimization</code> are <code>True</code> and
<code>False</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_configuration_:_Tags">Tags</code></td>
<td><p>Tags to add to the license configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_create_license_configuration_:_DisassociateWhenNotFound">DisassociateWhenNotFound</code></td>
<td><p>When true, disassociates a resource when software is
uninstalled.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_create_license_configuration_:_ProductInformationList">ProductInformationList</code></td>
<td><p>Product information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LicenseConfigurationArn = "string"
    )

### Request syntax

    svc$create_license_configuration(
      Name = "string",
      Description = "string",
      LicenseCountingType = "vCPU"|"Instance"|"Core"|"Socket",
      LicenseCount = 123,
      LicenseCountHardLimit = TRUE|FALSE,
      LicenseRules = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      DisassociateWhenNotFound = TRUE|FALSE,
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
      )
    )
