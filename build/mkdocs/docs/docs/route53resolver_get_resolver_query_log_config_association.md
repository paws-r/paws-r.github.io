<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_resolver_query_log_config_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specified association between a Resolver query logging configuration and an Amazon VPC

### Description

Gets information about a specified association between a Resolver query
logging configuration and an Amazon VPC. When you associate a VPC with a
query logging configuration, Resolver logs DNS queries that originate in
that VPC.

### Usage

    route53resolver_get_resolver_query_log_config_association(
      ResolverQueryLogConfigAssociationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_resolver_query_log_config_association_:_ResolverQueryLogConfigAssociationId">ResolverQueryLogConfigAssociationId</code></td>
<td><p>[required] The ID of the Resolver query logging configuration
association that you want to get information about.</p></td>
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

    svc$get_resolver_query_log_config_association(
      ResolverQueryLogConfigAssociationId = "string"
    )
