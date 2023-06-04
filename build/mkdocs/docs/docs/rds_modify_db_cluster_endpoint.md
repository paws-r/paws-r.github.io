<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_db_cluster_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the properties of an endpoint in an Amazon Aurora DB cluster

### Description

Modifies the properties of an endpoint in an Amazon Aurora DB cluster.

This action only applies to Aurora DB clusters.

### Usage

    rds_modify_db_cluster_endpoint(DBClusterEndpointIdentifier,
      EndpointType, StaticMembers, ExcludedMembers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_endpoint_:_DBClusterEndpointIdentifier">DBClusterEndpointIdentifier</code></td>
<td><p>[required] The identifier of the endpoint to modify. This
parameter is stored as a lowercase string.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_endpoint_:_EndpointType">EndpointType</code></td>
<td><p>The type of the endpoint. One of: <code>READER</code>,
<code>WRITER</code>, <code>ANY</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_cluster_endpoint_:_StaticMembers">StaticMembers</code></td>
<td><p>List of DB instance identifiers that are part of the custom
endpoint group.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_cluster_endpoint_:_ExcludedMembers">ExcludedMembers</code></td>
<td><p>List of DB instance identifiers that aren't part of the custom
endpoint group. All other eligible instances are reachable through the
custom endpoint. Only relevant if the list of static members is
empty.</p></td>
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

    svc$modify_db_cluster_endpoint(
      DBClusterEndpointIdentifier = "string",
      EndpointType = "string",
      StaticMembers = list(
        "string"
      ),
      ExcludedMembers = list(
        "string"
      )
    )
