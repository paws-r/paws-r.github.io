<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_reject_inbound_cross_cluster_search_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows the destination domain owner to reject an inbound cross-cluster search connection request

### Description

Allows the destination domain owner to reject an inbound cross-cluster
search connection request.

### Usage

    elasticsearchservice_reject_inbound_cross_cluster_search_connection(
      CrossClusterSearchConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_reject_inbound_cross_cluster_search_connection_:_CrossClusterSearchConnectionId">CrossClusterSearchConnectionId</code></td>
<td><p>[required] The id of the inbound connection that you want to
reject.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CrossClusterSearchConnection = list(
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
    )

### Request syntax

    svc$reject_inbound_cross_cluster_search_connection(
      CrossClusterSearchConnectionId = "string"
    )
