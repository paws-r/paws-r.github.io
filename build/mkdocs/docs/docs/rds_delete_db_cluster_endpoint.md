<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_db_cluster_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a custom endpoint and removes it from an Amazon Aurora DB cluster

### Description

Deletes a custom endpoint and removes it from an Amazon Aurora DB
cluster.

This action only applies to Aurora DB clusters.

### Usage

    rds_delete_db_cluster_endpoint(DBClusterEndpointIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_db_cluster_endpoint_:_DBClusterEndpointIdentifier">DBClusterEndpointIdentifier</code></td>
<td><p>[required] The identifier associated with the custom endpoint.
This parameter is stored as a lowercase string.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBClusterEndpointIdentifier = "string",
      DBClusterIdentifier = "string",
      DBClusterEndpointResourceIdentifier = "string",
      Endpoint = "string",
      Status = "string",
      EndpointType = "string",
      CustomEndpointType = "string",
      StaticMembers = list(
        "string"
      ),
      ExcludedMembers = list(
        "string"
      ),
      DBClusterEndpointArn = "string"
    )

### Request syntax

    svc$delete_db_cluster_endpoint(
      DBClusterEndpointIdentifier = "string"
    )
