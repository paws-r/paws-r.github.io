<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_reject_inbound_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows the remote Amazon OpenSearch Service domain owner to reject an inbound cross-cluster connection request

### Description

Allows the remote Amazon OpenSearch Service domain owner to reject an
inbound cross-cluster connection request.

### Usage

    opensearchservice_reject_inbound_connection(ConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_reject_inbound_connection_:_ConnectionId">ConnectionId</code></td>
<td><p>[required] The unique identifier of the inbound connection to
reject.</p></td>
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

    svc$reject_inbound_connection(
      ConnectionId = "string"
    )
