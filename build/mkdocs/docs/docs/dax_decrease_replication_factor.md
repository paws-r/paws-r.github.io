<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_decrease_replication_factor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more nodes from a DAX cluster

### Description

Removes one or more nodes from a DAX cluster.

You cannot use `decrease_replication_factor` to remove the last node in
a DAX cluster. If you need to do this, use `delete_cluster` instead.

### Usage

    dax_decrease_replication_factor(ClusterName, NewReplicationFactor,
      AvailabilityZones, NodeIdsToRemove)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dax_decrease_replication_factor_:_ClusterName">ClusterName</code></td>
<td><p>[required] The name of the DAX cluster from which you want to
remove nodes.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_decrease_replication_factor_:_NewReplicationFactor">NewReplicationFactor</code></td>
<td><p>[required] The new number of nodes for the DAX cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="dax_decrease_replication_factor_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>The Availability Zone(s) from which to remove nodes.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_decrease_replication_factor_:_NodeIdsToRemove">NodeIdsToRemove</code></td>
<td><p>The unique identifiers of the nodes to be removed from the
cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Cluster = list(
        ClusterName = "string",
        Description = "string",
        ClusterArn = "string",
        TotalNodes = 123,
        ActiveNodes = 123,
        NodeType = "string",
        Status = "string",
        ClusterDiscoveryEndpoint = list(
          Address = "string",
          Port = 123,
          URL = "string"
        ),
        NodeIdsToRemove = list(
          "string"
        ),
        Nodes = list(
          list(
            NodeId = "string",
            Endpoint = list(
              Address = "string",
              Port = 123,
              URL = "string"
            ),
            NodeCreateTime = as.POSIXct(
              "2015-01-01"
            ),
            AvailabilityZone = "string",
            NodeStatus = "string",
            ParameterGroupStatus = "string"
          )
        ),
        PreferredMaintenanceWindow = "string",
        NotificationConfiguration = list(
          TopicArn = "string",
          TopicStatus = "string"
        ),
        SubnetGroup = "string",
        SecurityGroups = list(
          list(
            SecurityGroupIdentifier = "string",
            Status = "string"
          )
        ),
        IamRoleArn = "string",
        ParameterGroup = list(
          ParameterGroupName = "string",
          ParameterApplyStatus = "string",
          NodeIdsToReboot = list(
            "string"
          )
        ),
        SSEDescription = list(
          Status = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"
        ),
        ClusterEndpointEncryptionType = "NONE"|"TLS"
      )
    )

### Request syntax

    svc$decrease_replication_factor(
      ClusterName = "string",
      NewReplicationFactor = 123,
      AvailabilityZones = list(
        "string"
      ),
      NodeIdsToRemove = list(
        "string"
      )
    )
