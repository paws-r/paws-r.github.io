<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_firewall_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the configuration of the firewall behavior provided by DNS Firewall for a single VPC from Amazon Virtual Private Cloud (Amazon VPC)

### Description

Retrieves the configuration of the firewall behavior provided by DNS
Firewall for a single VPC from Amazon Virtual Private Cloud (Amazon
VPC).

### Usage

    route53resolver_get_firewall_config(ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_firewall_config_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the VPC from Amazon VPC that the
configuration is for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallConfig = list(
        Id = "string",
        ResourceId = "string",
        OwnerId = "string",
        FirewallFailOpen = "ENABLED"|"DISABLED"|"USE_LOCAL_RESOURCE_SETTING"
      )
    )

### Request syntax

    svc$get_firewall_config(
      ResourceId = "string"
    )
