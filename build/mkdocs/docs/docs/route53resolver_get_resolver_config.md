<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_resolver_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the behavior configuration of Route 53 Resolver behavior for a single VPC from Amazon Virtual Private Cloud

### Description

Retrieves the behavior configuration of Route 53 Resolver behavior for a
single VPC from Amazon Virtual Private Cloud.

### Usage

    route53resolver_get_resolver_config(ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_resolver_config_:_ResourceId">ResourceId</code></td>
<td><p>[required] Resource ID of the Amazon VPC that you want to get
information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverConfig = list(
        Id = "string",
        ResourceId = "string",
        OwnerId = "string",
        AutodefinedReverse = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"|"UPDATING_TO_USE_LOCAL_RESOURCE_SETTING"|"USE_LOCAL_RESOURCE_SETTING"
      )
    )

### Request syntax

    svc$get_resolver_config(
      ResourceId = "string"
    )
