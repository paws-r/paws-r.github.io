<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_get_resolver_query_log_config_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a query logging policy

### Description

Gets information about a query logging policy. A query logging policy
specifies the Resolver query logging operations and resources that you
want to allow another Amazon Web Services account to be able to use.

### Usage

    route53resolver_get_resolver_query_log_config_policy(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_get_resolver_query_log_config_policy_:_Arn">Arn</code></td>
<td><p>[required] The ARN of the query logging configuration that you
want to get the query logging policy for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverQueryLogConfigPolicy = "string"
    )

### Request syntax

    svc$get_resolver_query_log_config_policy(
      Arn = "string"
    )
