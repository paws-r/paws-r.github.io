<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_delete_inbound_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows the destination Amazon OpenSearch Service domain owner to delete an existing inbound cross-cluster search connection

### Description

Allows the destination Amazon OpenSearch Service domain owner to delete
an existing inbound cross-cluster search connection. For more
information, see [Cross-cluster search for Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).

### Usage

    opensearchservice_delete_inbound_connection(ConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_delete_inbound_connection_:_ConnectionId">ConnectionId</code></td>
<td><p>[required] The ID of the inbound connection to permanently
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Connection = list(
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
        ConnectionStatus = list(
          StatusCode = "PENDING_ACCEPTANCE"|"APPROVED"|"PROVISIONING"|"ACTIVE"|"REJECTING"|"REJECTED"|"DELETING"|"DELETED",
          Message = "string"
        ),
        ConnectionMode = "DIRECT"|"VPC_ENDPOINT"
      )
    )

### Request syntax

    svc$delete_inbound_connection(
      ConnectionId = "string"
    )
