<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>licensemanager_list_resource_inventory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists resources managed using Systems Manager inventory

### Description

Lists resources managed using Systems Manager inventory.

### Usage

    licensemanager_list_resource_inventory(MaxResults, NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="licensemanager_list_resource_inventory_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of results to return in a single call.</p></td>
</tr>
<tr class="even">
<td><code
id="licensemanager_list_resource_inventory_:_NextToken">NextToken</code></td>
<td><p>Token for the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="licensemanager_list_resource_inventory_:_Filters">Filters</code></td>
<td><p>Filters to scope the results. The following filters and logical
operators are supported:</p>
<ul>
<li><p><code>account_id</code> - The ID of the Amazon Web Services
account that owns the resource. Logical operators are
<code>EQUALS</code> | <code>NOT_EQUALS</code>.</p></li>
<li><p><code>application_name</code> - The name of the application.
Logical operators are <code>EQUALS</code> |
<code>BEGINS_WITH</code>.</p></li>
<li><p><code>license_included</code> - The type of license included.
Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.
Possible values are <code>sql-server-enterprise</code> |
<code>sql-server-standard</code> | <code>sql-server-web</code> |
<code>windows-server-datacenter</code>.</p></li>
<li><p><code>platform</code> - The platform of the resource. Logical
operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p></li>
<li><p><code>resource_id</code> - The ID of the resource. Logical
operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p></li>
<li><p><code style="white-space: pre;">⁠tag:&lt;key&gt;⁠</code> - The
key/value combination of a tag assigned to the resource. Logical
operators are <code>EQUALS</code> (single account) or
<code>EQUALS</code> | <code>NOT_EQUALS</code> (cross account).</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceInventoryList = list(
        list(
          ResourceId = "string",
          ResourceType = "EC2_INSTANCE"|"EC2_HOST"|"EC2_AMI"|"RDS"|"SYSTEMS_MANAGER_MANAGED_INSTANCE",
          ResourceArn = "string",
          Platform = "string",
          PlatformVersion = "string",
          ResourceOwningAccountId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_resource_inventory(
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        list(
          Name = "string",
          Condition = "EQUALS"|"NOT_EQUALS"|"BEGINS_WITH"|"CONTAINS",
          Value = "string"
        )
      )
    )
