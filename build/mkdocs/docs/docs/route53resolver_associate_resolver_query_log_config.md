<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_associate_resolver_query_log_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an Amazon VPC with a specified query logging configuration

### Description

Associates an Amazon VPC with a specified query logging configuration.
Route 53 Resolver logs DNS queries that originate in all of the Amazon
VPCs that are associated with a specified query logging configuration.
To associate more than one VPC with a configuration, submit one
`associate_resolver_query_log_config` request for each VPC.

The VPCs that you associate with a query logging configuration must be
in the same Region as the configuration.

To remove a VPC from a query logging configuration, see
`disassociate_resolver_query_log_config`.

### Usage

    route53resolver_associate_resolver_query_log_config(
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
id="route53resolver_associate_resolver_query_log_config_:_ResolverQueryLogConfigId">ResolverQueryLogConfigId</code></td>
<td><p>[required] The ID of the query logging configuration that you
want to associate a VPC with.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_associate_resolver_query_log_config_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of an Amazon VPC that you want this query
logging configuration to log queries for.</p>
<p>The VPCs and the query logging configuration must be in the same
Region.</p></td>
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

    svc$associate_resolver_query_log_config(
      ResolverQueryLogConfigId = "string",
      ResourceId = "string"
    )
