<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_describe_outbound_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the outbound cross-cluster connections for a local (source) Amazon OpenSearch Service domain

### Description

Lists all the outbound cross-cluster connections for a local (source)
Amazon OpenSearch Service domain. For more information, see
[Cross-cluster search for Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).

### Usage

    opensearchservice_describe_outbound_connections(Filters, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_describe_outbound_connections_:_Filters">Filters</code></td>
<td><p>List of filter names and values that you can use for
requests.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_describe_outbound_connections_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter that specifies the maximum number of
results to return. You can use <code>nextToken</code> to get the next
page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_describe_outbound_connections_:_NextToken">NextToken</code></td>
<td><p>If your initial <code>describe_outbound_connections</code>
operation returns a <code>nextToken</code>, you can include the returned
<code>nextToken</code> in subsequent
<code>describe_outbound_connections</code> operations, which returns
results in the next page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Connections = list(
        list(
          LocalDomainInfo = list(
            AWSDomainInformation = list(
              OwnerId = "string",
              DomainName = "string",
              Region = "string"
            )
          ),
          RemoteDomainInfo = list(
            AWSDomainInformation = list(
              OwnerId = "string",
              DomainName = "string",
              Region = "string"
            )
          ),
          ConnectionId = "string",
          ConnectionAlias = "string",
          ConnectionStatus = list(
            StatusCode = "VALIDATING"|"VALIDATION_FAILED"|"PENDING_ACCEPTANCE"|"APPROVED"|"PROVISIONING"|"ACTIVE"|"REJECTING"|"REJECTED"|"DELETING"|"DELETED",
            Message = "string"
          ),
          ConnectionMode = "DIRECT"|"VPC_ENDPOINT",
          ConnectionProperties = list(
            Endpoint = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_outbound_connections(
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
