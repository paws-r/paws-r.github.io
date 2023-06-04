<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_list_resolver_query_log_config_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about associations between Amazon VPCs and query logging configurations

### Description

Lists information about associations between Amazon VPCs and query
logging configurations.

### Usage

    route53resolver_list_resolver_query_log_config_associations(MaxResults,
      NextToken, Filters, SortBy, SortOrder)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_query_log_config_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of query logging associations that you want to
return in the response to a
<code>list_resolver_query_log_config_associations</code> request. If you
don't specify a value for <code>MaxResults</code>, Resolver returns up
to 100 query logging associations.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_resolver_query_log_config_associations_:_NextToken">NextToken</code></td>
<td><p>For the first
<code>list_resolver_query_log_config_associations</code> request, omit
this value.</p>
<p>If there are more than <code>MaxResults</code> query logging
associations that match the values that you specify for
<code>Filters</code>, you can submit another
<code>list_resolver_query_log_config_associations</code> request to get
the next group of associations. In the next request, specify the value
of <code>NextToken</code> from the previous response.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_list_resolver_query_log_config_associations_:_Filters">Filters</code></td>
<td><p>An optional specification to return a subset of query logging
associations.</p>
<p>If you submit a second or subsequent
<code>list_resolver_query_log_config_associations</code> request and
specify the <code>NextToken</code> parameter, you must use the same
values for <code>Filters</code>, if any, as in the previous
request.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_list_resolver_query_log_config_associations_:_SortBy">SortBy</code></td>
<td><p>The element that you want Resolver to sort query logging
associations by.</p>
<p>If you submit a second or subsequent
<code>list_resolver_query_log_config_associations</code> request and
specify the <code>NextToken</code> parameter, you must use the same
value for <code>SortBy</code>, if any, as in the previous request.</p>
<p>Valid values include the following elements:</p>
<ul>
<li><p><code>CreationTime</code>: The ID of the query logging
association.</p></li>
<li><p><code>Error</code>: If the value of <code>Status</code> is
<code>FAILED</code>, the value of <code>Error</code> indicates the
cause:</p>
<ul>
<li><p><code>DESTINATION_NOT_FOUND</code>: The specified destination
(for example, an Amazon S3 bucket) was deleted.</p></li>
<li><p><code>ACCESS_DENIED</code>: Permissions don't allow sending logs
to the destination.</p></li>
</ul>
<p>If <code>Status</code> is a value other than <code>FAILED</code>,
<code>ERROR</code> is null.</p></li>
<li><p><code>Id</code>: The ID of the query logging association</p></li>
<li><p><code>ResolverQueryLogConfigId</code>: The ID of the query
logging configuration</p></li>
<li><p><code>ResourceId</code>: The ID of the VPC that is associated
with the query logging configuration</p></li>
<li><p><code>Status</code>: The current status of the configuration.
Valid values include the following:</p>
<ul>
<li><p><code>CREATING</code>: Resolver is creating an association
between an Amazon VPC and a query logging configuration.</p></li>
<li><p><code>CREATED</code>: The association between an Amazon VPC and a
query logging configuration was successfully created. Resolver is
logging queries that originate in the specified VPC.</p></li>
<li><p><code>DELETING</code>: Resolver is deleting this query logging
association.</p></li>
<li><p><code>FAILED</code>: Resolver either couldn't create or couldn't
delete the query logging association. Here are two common causes:</p>
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
id="route53resolver_list_resolver_query_log_config_associations_:_SortOrder">SortOrder</code></td>
<td><p>If you specified a value for <code>SortBy</code>, the order that
you want query logging associations to be listed in,
<code>ASCENDING</code> or <code>DESCENDING</code>.</p>
<p>If you submit a second or subsequent
<code>list_resolver_query_log_config_associations</code> request and
specify the <code>NextToken</code> parameter, you must use the same
value for <code>SortOrder</code>, if any, as in the previous
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      TotalCount = 123,
      TotalFilteredCount = 123,
      ResolverQueryLogConfigAssociations = list(
        list(
          Id = "string",
          ResolverQueryLogConfigId = "string",
          ResourceId = "string",
          Status = "CREATING"|"ACTIVE"|"ACTION_NEEDED"|"DELETING"|"FAILED",
          Error = "NONE"|"DESTINATION_NOT_FOUND"|"ACCESS_DENIED"|"INTERNAL_SERVICE_ERROR",
          ErrorMessage = "string",
          CreationTime = "string"
        )
      )
    )

### Request syntax

    svc$list_resolver_query_log_config_associations(
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
