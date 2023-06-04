<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_resolver_query_log_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about the specified query logging configurations

### Description

Lists information about the specified query logging configurations. Each
configuration defines where you want Resolver to save DNS query logs and
specifies the VPCs that you want to log queries for.

### Usage

    route53resolver_list_resolver_query_log_configs(MaxResults, NextToken,
      Filters, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_query_log_configs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of query logging configurations that you want
to return in the response to a
<code>list_resolver_query_log_configs</code> request. If you don't
specify a value for <code>MaxResults</code>, Resolver returns up to 100
query logging configurations.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_resolver_query_log_configs_:_NextToken">NextToken</code></td>
<td><p>For the first <code>list_resolver_query_log_configs</code>
request, omit this value.</p>
<p>If there are more than <code>MaxResults</code> query logging
configurations that match the values that you specify for
<code>Filters</code>, you can submit another
<code>list_resolver_query_log_configs</code> request to get the next
group of configurations. In the next request, specify the value of
<code>NextToken</code> from the previous response.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_query_log_configs_:_Filters">Filters</code></td>
<td><p>An optional specification to return a subset of query logging
configurations.</p>
<p>If you submit a second or subsequent
<code>list_resolver_query_log_configs</code> request and specify the
<code>NextToken</code> parameter, you must use the same values for
<code>Filters</code>, if any, as in the previous request.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_resolver_query_log_configs_:_SortBy">SortBy</code></td>
<td><p>The element that you want Resolver to sort query logging
configurations by.</p>
<p>If you submit a second or subsequent
<code>list_resolver_query_log_configs</code> request and specify the
<code>NextToken</code> parameter, you must use the same value for
<code>SortBy</code>, if any, as in the previous request.</p>
<p>Valid values include the following elements:</p>
<ul>
<li><p><code>Arn</code>: The ARN of the query logging
configuration</p></li>
<li><p><code>AssociationCount</code>: The number of VPCs that are
associated with the specified configuration</p></li>
<li><p><code>CreationTime</code>: The date and time that Resolver
returned when the configuration was created</p></li>
<li><p><code>CreatorRequestId</code>: The value that was specified for
<code>CreatorRequestId</code> when the configuration was
created</p></li>
<li><p><code>DestinationArn</code>: The location that logs are sent
to</p></li>
<li><p><code>Id</code>: The ID of the configuration</p></li>
<li><p><code>Name</code>: The name of the configuration</p></li>
<li><p><code>OwnerId</code>: The Amazon Web Services account number of
the account that created the configuration</p></li>
<li><p><code>ShareStatus</code>: Whether the configuration is shared
with other Amazon Web Services accounts or shared with the current
account by another Amazon Web Services account. Sharing is configured
through Resource Access Manager (RAM).</p></li>
<li><p><code>Status</code>: The current status of the configuration.
Valid values include the following:</p>
<ul>
<li><p><code>CREATING</code>: Resolver is creating the query logging
configuration.</p></li>
<li><p><code>CREATED</code>: The query logging configuration was
successfully created. Resolver is logging queries that originate in the
specified VPC.</p></li>
<li><p><code>DELETING</code>: Resolver is deleting this query logging
configuration.</p></li>
<li><p><code>FAILED</code>: Resolver either couldn't create or couldn't
delete the query logging configuration. Here are two common causes:</p>
<ul>
<li><p>The specified destination (for example, an Amazon S3 bucket) was
deleted.</p></li>
<li><p>Permissions don't allow sending logs to the destination.</p></li>
</ul></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_query_log_configs_:_SortOrder">SortOrder</code></td>
<td><p>If you specified a value for <code>SortBy</code>, the order that
you want query logging configurations to be listed in,
<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
<p>If you submit a second or subsequent
<code>list_resolver_query_log_configs</code> request and specify the
<code>NextToken</code> parameter, you must use the same value for
<code>SortOrder</code>, if any, as in the previous request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      TotalCount = 123,
      TotalFilteredCount = 123,
      ResolverQueryLogConfigs = list(
        list(
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
    )

### Request syntax

    svc$list_resolver_query_log_configs(
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      SortBy = "string",
      SortOrder = "ASCENDING"|"DESCENDING"
    )
