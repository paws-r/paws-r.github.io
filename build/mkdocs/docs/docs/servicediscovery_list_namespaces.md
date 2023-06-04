<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_list_namespaces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists summary information about the namespaces that were created by the current Amazon Web Services account

### Description

Lists summary information about the namespaces that were created by the
current Amazon Web Services account.

### Usage

    servicediscovery_list_namespaces(NextToken, MaxResults, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_list_namespaces_:_NextToken">NextToken</code></td>
<td><p>For the first <code>list_namespaces</code> request, omit this
value.</p>
<p>If the response contains <code>NextToken</code>, submit another
<code>list_namespaces</code> request to get the next group of results.
Specify the value of <code>NextToken</code> from the previous response
in the next request.</p>
<p>Cloud Map gets <code>MaxResults</code> namespaces and then filters
them based on the specified criteria. It's possible that no namespaces
in the first <code>MaxResults</code> namespaces matched the specified
criteria but that subsequent groups of <code>MaxResults</code>
namespaces do contain namespaces that match the criteria.</p></td>
</tr>
<tr class="even">
<td><code
id="servicediscovery_list_namespaces_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of namespaces that you want Cloud Map to
return in the response to a <code>list_namespaces</code> request. If you
don't specify a value for <code>MaxResults</code>, Cloud Map returns up
to 100 namespaces.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicediscovery_list_namespaces_:_Filters">Filters</code></td>
<td><p>A complex type that contains specifications for the namespaces
that you want to list.</p>
<p>If you specify more than one filter, a namespace must match all
filters to be returned by <code>list_namespaces</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Namespaces = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string",
          Type = "DNS_PUBLIC"|"DNS_PRIVATE"|"HTTP",
          Description = "string",
          ServiceCount = 123,
          Properties = list(
            DnsProperties = list(
              HostedZoneId = "string",
              SOA = list(
                TTL = 123
              )
            ),
            HttpProperties = list(
              HttpName = "string"
            )
          ),
          CreateDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_namespaces(
      NextToken = "string",
      MaxResults = 123,
      Filters = list(
        list(
          Name = "TYPE"|"NAME"|"HTTP_NAME",
          Values = list(
            "string"
          ),
          Condition = "EQ"|"IN"|"BETWEEN"|"BEGINS_WITH"
        )
      )
    )

### Examples

    ## Not run: 
    # Example: List namespaces
    svc$list_namespaces()

    ## End(Not run)
