<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_disassociate_resolver_query_log_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a VPC from a query logging configuration

### Description

Disassociates a VPC from a query logging configuration.

Before you can delete a query logging configuration, you must first
disassociate all VPCs from the configuration. If you used Resource
Access Manager (RAM) to share a query logging configuration with other
accounts, VPCs can be disassociated from the configuration in the
following ways:

-   The accounts that you shared the configuration with can disassociate
    VPCs from the configuration.

-   You can stop sharing the configuration.

### Usage

    route53resolver_disassociate_resolver_query_log_config(
      ResolverQueryLogConfigId, ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_disassociate_resolver_query_log_config_:_ResolverQueryLogConfigId">ResolverQueryLogConfigId</code></td>
<td><p>[required] The ID of the query logging configuration that you
want to disassociate a specified VPC from.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_disassociate_resolver_query_log_config_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the Amazon VPC that you want to disassociate
from a specified query logging configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverQueryLogConfigAssociation = list(
        Id = "string",
        ResolverQueryLogConfigId = "string",
        ResourceId = "string",
        Status = "CREATING"|"ACTIVE"|"ACTION_NEEDED"|"DELETING"|"FAILED",
        Error = "NONE"|"DESTINATION_NOT_FOUND"|"ACCESS_DENIED"|"INTERNAL_SERVICE_ERROR",
        ErrorMessage = "string",
        CreationTime = "string"
      )
    )

### Request syntax

    svc$disassociate_resolver_query_log_config(
      ResolverQueryLogConfigId = "string",
      ResourceId = "string"
    )
