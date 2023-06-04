<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_list_services</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists summary information for all the services that are associated with one or more specified namespaces

### Description

Lists summary information for all the services that are associated with
one or more specified namespaces.

### Usage

    servicediscovery_list_services(NextToken, MaxResults, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_list_services_:_NextToken">NextToken</code></td>
<td><p>For the first <code>list_services</code> request, omit this
value.</p>
<p>If the response contains <code>NextToken</code>, submit another
<code>list_services</code> request to get the next group of results.
Specify the value of <code>NextToken</code> from the previous response
in the next request.</p>
<p>Cloud Map gets <code>MaxResults</code> services and then filters them
based on the specified criteria. It's possible that no services in the
first <code>MaxResults</code> services matched the specified criteria
but that subsequent groups of <code>MaxResults</code> services do
contain services that match the criteria.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_list_services_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of services that you want Cloud Map to return
in the response to a <code>list_services</code> request. If you don't
specify a value for <code>MaxResults</code>, Cloud Map returns up to 100
services.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_list_services_:_Filters">Filters</code></td>
<td><p>A complex type that contains specifications for the namespaces
that you want to list services for.</p>
<p>If you specify more than one filter, an operation must match all
filters to be returned by <code>list_services</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Services = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string",
          Type = "HTTP"|"DNS_HTTP"|"DNS",
          Description = "string",
          InstanceCount = 123,
          DnsConfig = list(
            NamespaceId = "string",
            RoutingPolicy = "MULTIVALUE"|"WEIGHTED",
            DnsRecords = list(
              list(
                Type = "SRV"|"A"|"AAAA"|"CNAME",
                TTL = 123
              )
            )
          ),
          HealthCheckConfig = list(
            Type = "HTTP"|"HTTPS"|"TCP",
            ResourcePath = "string",
            FailureThreshold = 123
          ),
          HealthCheckCustomConfig = list(
            FailureThreshold = 123
          ),
          CreateDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_services(
      NextToken = "string",
      MaxResults = 123,
      Filters = list(
        list(
          Name = "NAMESPACE_ID",
          Values = list(
            "string"
          ),
          Condition = "EQ"|"IN"|"BETWEEN"|"BEGINS_WITH"
        )
      )
    )

### Examples

    ## Not run: 
    # Example: List services
    svc$list_services()

    ## End(Not run)
