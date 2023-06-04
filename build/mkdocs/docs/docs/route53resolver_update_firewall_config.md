<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_update_firewall_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of the firewall behavior provided by DNS Firewall for a single VPC from Amazon Virtual Private Cloud (Amazon VPC)

### Description

Updates the configuration of the firewall behavior provided by DNS
Firewall for a single VPC from Amazon Virtual Private Cloud (Amazon
VPC).

### Usage

    route53resolver_update_firewall_config(ResourceId, FirewallFailOpen)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_update_firewall_config_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the VPC that the configuration is
for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_firewall_config_:_FirewallFailOpen">FirewallFailOpen</code></td>
<td><p>[required] Determines how Route 53 Resolver handles queries
during failures, for example when all traffic that is sent to DNS
Firewall fails to receive a reply.</p>
<ul>
<li><p>By default, fail open is disabled, which means the failure mode
is closed. This approach favors security over availability. DNS Firewall
blocks queries that it is unable to evaluate properly.</p></li>
<li><p>If you enable this option, the failure mode is open. This
approach favors availability over security. DNS Firewall allows queries
to proceed if it is unable to properly evaluate them.</p></li>
</ul>
<p>This behavior is only enforced for VPCs that have at least one DNS
Firewall rule group association.</p></td>
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

    svc$update_firewall_config(
      ResourceId = "string",
      FirewallFailOpen = "ENABLED"|"DISABLED"|"USE_LOCAL_RESOURCE_SETTING"
    )
