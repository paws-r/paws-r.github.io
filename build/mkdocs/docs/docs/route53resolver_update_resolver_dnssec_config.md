<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_update_resolver_dnssec_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing DNSSEC validation configuration

### Description

Updates an existing DNSSEC validation configuration. If there is no
existing DNSSEC validation configuration, one is created.

### Usage

    route53resolver_update_resolver_dnssec_config(ResourceId, Validation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_update_resolver_dnssec_config_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the virtual private cloud (VPC) that you're
updating the DNSSEC validation status for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_resolver_dnssec_config_:_Validation">Validation</code></td>
<td><p>[required] The new value that you are specifying for DNSSEC
validation for the VPC. The value can be <code>ENABLE</code> or
<code>DISABLE</code>. Be aware that it can take time for a validation
status change to be completed.</p></td>
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

    svc$update_resolver_dnssec_config(
      ResourceId = "string",
      Validation = "ENABLE"|"DISABLE"|"USE_LOCAL_RESOURCE_SETTING"
    )
