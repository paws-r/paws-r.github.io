<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_create_outbound_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new cross-cluster search connection from a source Amazon OpenSearch Service domain to a destination domain

### Description

Creates a new cross-cluster search connection from a source Amazon
OpenSearch Service domain to a destination domain. For more information,
see [Cross-cluster search for Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).

### Usage

    opensearchservice_create_outbound_connection(LocalDomainInfo,
      RemoteDomainInfo, ConnectionAlias, ConnectionMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_create_outbound_connection_:_LocalDomainInfo">LocalDomainInfo</code></td>
<td><p>[required] Name and Region of the source (local) domain.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_outbound_connection_:_RemoteDomainInfo">RemoteDomainInfo</code></td>
<td><p>[required] Name and Region of the destination (remote)
domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_create_outbound_connection_:_ConnectionAlias">ConnectionAlias</code></td>
<td><p>[required] Name of the connection.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_create_outbound_connection_:_ConnectionMode">ConnectionMode</code></td>
<td><p>The connection mode.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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
      ConnectionAlias = "string",
      ConnectionStatus = list(
        StatusCode = "VALIDATING"|"VALIDATION_FAILED"|"PENDING_ACCEPTANCE"|"APPROVED"|"PROVISIONING"|"ACTIVE"|"REJECTING"|"REJECTED"|"DELETING"|"DELETED",
        Message = "string"
      ),
      ConnectionId = "string",
      ConnectionMode = "DIRECT"|"VPC_ENDPOINT",
      ConnectionProperties = list(
        Endpoint = "string"
      )
    )

### Request syntax

    svc$create_outbound_connection(
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
      ConnectionAlias = "string",
      ConnectionMode = "DIRECT"|"VPC_ENDPOINT"
    )
