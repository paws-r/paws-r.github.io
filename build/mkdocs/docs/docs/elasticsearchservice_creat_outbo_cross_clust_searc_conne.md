<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_create_outbound_cross_cluster_search_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new cross-cluster search connection from a source domain to a destination domain

### Description

Creates a new cross-cluster search connection from a source domain to a
destination domain.

### Usage

    elasticsearchservice_create_outbound_cross_cluster_search_connection(
      SourceDomainInfo, DestinationDomainInfo, ConnectionAlias)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_create_outbound_cross_cluster_search_connection_:_SourceDomainInfo">SourceDomainInfo</code></td>
<td><p>[required] Specifies the <code>DomainInformation</code> for the
source Elasticsearch domain.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_create_outbound_cross_cluster_search_connection_:_DestinationDomainInfo">DestinationDomainInfo</code></td>
<td><p>[required] Specifies the <code>DomainInformation</code> for the
destination Elasticsearch domain.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_create_outbound_cross_cluster_search_connection_:_ConnectionAlias">ConnectionAlias</code></td>
<td><p>[required] Specifies the connection alias that will be used by
the customer for this connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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
      ConnectionAlias = "string",
      ConnectionStatus = list(
        StatusCode = "PENDING_ACCEPTANCE"|"VALIDATING"|"VALIDATION_FAILED"|"PROVISIONING"|"ACTIVE"|"REJECTED"|"DELETING"|"DELETED",
        Message = "string"
      ),
      CrossClusterSearchConnectionId = "string"
    )

### Request syntax

    svc$create_outbound_cross_cluster_search_connection(
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
      ConnectionAlias = "string"
    )
