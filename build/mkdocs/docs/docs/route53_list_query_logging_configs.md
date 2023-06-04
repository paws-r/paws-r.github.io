<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_query_logging_configs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the configurations for DNS query logging that are associated with the current Amazon Web Services account or the configuration that is associated with a specified hosted zone

### Description

Lists the configurations for DNS query logging that are associated with
the current Amazon Web Services account or the configuration that is
associated with a specified hosted zone.

For more information about DNS query logs, see
`create_query_logging_config`. Additional information, including the
format of DNS query logs, appears in [Logging DNS
Queries](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/query-logs.html)
in the *Amazon Route 53 Developer Guide*.

### Usage

    route53_list_query_logging_configs(HostedZoneId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_query_logging_configs_:_HostedZoneId">HostedZoneId</code></td>
<td><p>(Optional) If you want to list the query logging configuration
that is associated with a hosted zone, specify the ID in
<code>HostedZoneId</code>.</p>
<p>If you don't specify a hosted zone ID,
<code>list_query_logging_configs</code> returns all of the
configurations that are associated with the current Amazon Web Services
account.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_query_logging_configs_:_NextToken">NextToken</code></td>
<td><p>(Optional) If the current Amazon Web Services account has more
than <code>MaxResults</code> query logging configurations, use
<code>NextToken</code> to get the second and subsequent pages of
results.</p>
<p>For the first <code>list_query_logging_configs</code> request, omit
this value.</p>
<p>For the second and subsequent requests, get the value of
<code>NextToken</code> from the previous response and specify that value
for <code>NextToken</code> in the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_query_logging_configs_:_MaxResults">MaxResults</code></td>
<td><p>(Optional) The maximum number of query logging configurations
that you want Amazon Route 53 to return in response to the current
request. If the current Amazon Web Services account has more than
<code>MaxResults</code> configurations, use the value of <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListQueryLoggingConfigs.html#API_ListQueryLoggingConfigs_RequestSyntax">NextToken</a>
in the response to get the next page of results.</p>
<p>If you don't specify a value for <code>MaxResults</code>, Route 53
returns up to 100 configurations.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryLoggingConfigs = list(
        list(
          Id = "string",
          HostedZoneId = "string",
          CloudWatchLogsLogGroupArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_query_logging_configs(
      HostedZoneId = "string",
      NextToken = "string",
      MaxResults = "string"
    )
