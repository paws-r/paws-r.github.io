<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_describe_inbound_cross_cluster_search_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the inbound cross-cluster search connections for a destination domain

### Description

Lists all the inbound cross-cluster search connections for a destination
domain.

### Usage

    elasticsearchservice_describe_inbound_cross_cluster_search_connections(
      Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_describe_inbound_cross_cluster_search_connections_:_Filters">Filters</code></td>
<td><p>A list of filters used to match properties for inbound
cross-cluster search connection. Available <code>Filter</code> names for
this operation are:</p>
<ul>
<li><p>cross-cluster-search-connection-id</p></li>
<li><p>source-domain-info.domain-name</p></li>
<li><p>source-domain-info.owner-id</p></li>
<li><p>source-domain-info.region</p></li>
<li><p>destination-domain-info.domain-name</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_describe_inbound_cross_cluster_search_connections_:_MaxResults">MaxResults</code></td>
<td><p>Set this value to limit the number of results returned. If not
specified, defaults to 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_describe_inbound_cross_cluster_search_connections_:_NextToken">NextToken</code></td>
<td><p>NextToken is sent in case the earlier API call results contain
the NextToken. It is used for pagination.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CrossClusterSearchConnections = list(
        list(
          SourceDomainInfo = list(
            OwnerId = "string",
            DomainName = "string",
            Region = "string"
          ),
          DestinationDomainInfo = list(
            OwnerId = "string",
            DomainName = "string",
            Region = "string"
          ),
          CrossClusterSearchConnectionId = "string",
          ConnectionStatus = list(
            StatusCode = "PENDING_ACCEPTANCE"|"APPROVED"|"REJECTING"|"REJECTED"|"DELETING"|"DELETED",
            Message = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_inbound_cross_cluster_search_connections(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
