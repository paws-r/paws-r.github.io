<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_put_resolver_query_log_config_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies an Amazon Web Services account that you want to share a query logging configuration with, the query logging configuration that you want to share, and the operations that you want the account to be able to perform on the configuration

### Description

Specifies an Amazon Web Services account that you want to share a query
logging configuration with, the query logging configuration that you
want to share, and the operations that you want the account to be able
to perform on the configuration.

### Usage

    route53resolver_put_resolver_query_log_config_policy(Arn,
      ResolverQueryLogConfigPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_put_resolver_query_log_config_policy_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the account that you
want to share rules with.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_put_resolver_query_log_config_policy_:_ResolverQueryLogConfigPolicy">ResolverQueryLogConfigPolicy</code></td>
<td><p>[required] An Identity and Access Management policy statement
that lists the query logging configurations that you want to share with
another Amazon Web Services account and the operations that you want the
account to be able to perform. You can specify the following operations
in the <code>Actions</code> section of the statement:</p>
<ul>
<li><p><code>route53resolver:AssociateResolverQueryLogConfig</code></p></li>
<li><p><code>route53resolver:DisassociateResolverQueryLogConfig</code></p></li>
<li><p><code>route53resolver:ListResolverQueryLogConfigAssociations</code></p></li>
<li><p><code>route53resolver:ListResolverQueryLogConfigs</code></p></li>
</ul>
<p>In the <code>Resource</code> section of the statement, you specify
the ARNs for the query logging configurations that you want to share
with the account that you specified in <code>Arn</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReturnValue = TRUE|FALSE
    )

### Request syntax

    svc$put_resolver_query_log_config_policy(
      Arn = "string",
      ResolverQueryLogConfigPolicy = "string"
    )
