<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_resolver_query_log_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specified Resolver query logging configuration, such as the number of VPCs that the configuration is logging queries for and the location that logs are sent to

### Description

Gets information about a specified Resolver query logging configuration,
such as the number of VPCs that the configuration is logging queries for
and the location that logs are sent to.

### Usage

    route53resolver_get_resolver_query_log_config(ResolverQueryLogConfigId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_resolver_query_log_config_:_ResolverQueryLogConfigId">ResolverQueryLogConfigId</code></td>
<td><p>[required] The ID of the Resolver query logging configuration
that you want to get information about.</p></td>
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

    svc$get_resolver_query_log_config(
      ResolverQueryLogConfigId = "string"
    )
