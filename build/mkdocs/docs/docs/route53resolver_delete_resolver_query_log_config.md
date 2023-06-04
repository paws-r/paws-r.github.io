<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_delete_resolver_query_log_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a query logging configuration

### Description

Deletes a query logging configuration. When you delete a configuration,
Resolver stops logging DNS queries for all of the Amazon VPCs that are
associated with the configuration. This also applies if the query
logging configuration is shared with other Amazon Web Services accounts,
and the other accounts have associated VPCs with the shared
configuration.

Before you can delete a query logging configuration, you must first
disassociate all VPCs from the configuration. See
`disassociate_resolver_query_log_config`.

If you used Resource Access Manager (RAM) to share a query logging
configuration with other accounts, you must stop sharing the
configuration before you can delete a configuration. The accounts that
you shared the configuration with can first disassociate VPCs that they
associated with the configuration, but that's not necessary. If you stop
sharing the configuration, those VPCs are automatically disassociated
from the configuration.

### Usage

    route53resolver_delete_resolver_query_log_config(
      ResolverQueryLogConfigId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_delete_resolver_query_log_config_:_ResolverQueryLogConfigId">ResolverQueryLogConfigId</code></td>
<td><p>[required] The ID of the query logging configuration that you
want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverQueryLogConfig = list(
        Id = "string",
        OwnerId = "string",
        Status = "CREATING"|"CREATED"|"DELETING"|"FAILED",
        ShareStatus = "NOT_SHARED"|"SHARED_WITH_ME"|"SHARED_BY_ME",
        AssociationCount = 123,
        Arn = "string",
        Name = "string",
        DestinationArn = "string",
        CreatorRequestId = "string",
        CreationTime = "string"
      )
    )

### Request syntax

    svc$delete_resolver_query_log_config(
      ResolverQueryLogConfigId = "string"
    )
