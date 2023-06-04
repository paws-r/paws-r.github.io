<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_delete_outbound_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows the source Amazon OpenSearch Service domain owner to delete an existing outbound cross-cluster search connection

### Description

Allows the source Amazon OpenSearch Service domain owner to delete an
existing outbound cross-cluster search connection. For more information,
see [Cross-cluster search for Amazon OpenSearch
Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).

### Usage

    opensearchservice_delete_outbound_connection(ConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_delete_outbound_connection_:_ConnectionId">ConnectionId</code></td>
<td><p>[required] The ID of the outbound connection you want to
permanently delete.</p></td>
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
    )

### Request syntax

    svc$delete_outbound_connection(
      ConnectionId = "string"
    )
