<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_update_company_network_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the company network configuration for the fleet

### Description

Updates the company network configuration for the fleet.

### Usage

    worklink_update_company_network_configuration(FleetArn, VpcId,
      SubnetIds, SecurityGroupIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="worklink_update_company_network_configuration_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_update_company_network_configuration_:_VpcId">VpcId</code></td>
<td><p>[required] The VPC with connectivity to associated
websites.</p></td>
</tr>
<tr class="odd">
<td><code
id="worklink_update_company_network_configuration_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] The subnets used for X-ENI connections from Amazon
WorkLink rendering containers.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_update_company_network_configuration_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>[required] The security groups associated with access to the
provided subnets.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_company_network_configuration(
      FleetArn = "string",
      VpcId = "string",
      SubnetIds = list(
        "string"
      ),
      SecurityGroupIds = list(
        "string"
      )
    )
