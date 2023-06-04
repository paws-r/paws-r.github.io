<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_resolver_dnssec_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets DNSSEC validation information for a specified resource

### Description

Gets DNSSEC validation information for a specified resource.

### Usage

    route53resolver_get_resolver_dnssec_config(ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_resolver_dnssec_config_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the virtual private cloud (VPC) for the
DNSSEC validation status.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverDNSSECConfig = list(
        Id = "string",
        OwnerId = "string",
        ResourceId = "string",
        ValidationStatus = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"UPDATING_TO_USE_LOCAL_RESOURCE_SETTING"|"USE_LOCAL_RESOURCE_SETTING"
      )
    )

### Request syntax

    svc$get_resolver_dnssec_config(
      ResourceId = "string"
    )
