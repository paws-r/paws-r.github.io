<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_create_db_cluster_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new custom endpoint and associates it with an Amazon Neptune DB cluster

### Description

Creates a new custom endpoint and associates it with an Amazon Neptune
DB cluster.

### Usage

    neptune_create_db_cluster_endpoint(DBClusterIdentifier,
      DBClusterEndpointIdentifier, EndpointType, StaticMembers,
      ExcludedMembers, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_endpoint_:_DBClusterIdentifier">DBClusterIdentifier</code></td>
<td><p>[required] The DB cluster identifier of the DB cluster associated
with the endpoint. This parameter is stored as a lowercase
string.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_endpoint_:_DBClusterEndpointIdentifier">DBClusterEndpointIdentifier</code></td>
<td><p>[required] The identifier to use for the new endpoint. This
parameter is stored as a lowercase string.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_endpoint_:_EndpointType">EndpointType</code></td>
<td><p>[required] The type of the endpoint. One of: <code>READER</code>,
<code>WRITER</code>, <code>ANY</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_endpoint_:_StaticMembers">StaticMembers</code></td>
<td><p>List of DB instance identifiers that are part of the custom
endpoint group.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_db_cluster_endpoint_:_ExcludedMembers">ExcludedMembers</code></td>
<td><p>List of DB instance identifiers that aren't part of the custom
endpoint group. All other eligible instances are reachable through the
custom endpoint. Only relevant if the list of static members is
empty.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_db_cluster_endpoint_:_Tags">Tags</code></td>
<td><p>The tags to be assigned to the Amazon Neptune resource.</p></td>
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

    svc$create_db_cluster_endpoint(
      DBClusterIdentifier = "string",
      DBClusterEndpointIdentifier = "string",
      EndpointType = "string",
      StaticMembers = list(
        "string"
      ),
      ExcludedMembers = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
