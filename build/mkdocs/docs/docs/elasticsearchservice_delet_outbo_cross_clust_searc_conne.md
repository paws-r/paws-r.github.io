<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_delete_outbound_cross_cluster_search_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows the source domain owner to delete an existing outbound cross-cluster search connection

### Description

Allows the source domain owner to delete an existing outbound
cross-cluster search connection.

### Usage

    elasticsearchservice_delete_outbound_cross_cluster_search_connection(
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
id="elasticsearchservice_delete_outbound_cross_cluster_search_connection_:_CrossClusterSearchConnectionId">CrossClusterSearchConnectionId</code></td>
<td><p>[required] The id of the outbound connection that you want to
permanently delete.</p></td>
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
        ConnectionAlias = "string",
        ConnectionStatus = list(
          StatusCode = "PENDING_ACCEPTANCE"|"VALIDATING"|"VALIDATION_FAILED"|"PROVISIONING"|"ACTIVE"|"REJECTED"|"DELETING"|"DELETED",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$delete_outbound_cross_cluster_search_connection(
      CrossClusterSearchConnectionId = "string"
    )
