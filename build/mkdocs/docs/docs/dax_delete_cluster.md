<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_delete_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a previously provisioned DAX cluster

### Description

Deletes a previously provisioned DAX cluster. *DeleteCluster* deletes
all associated nodes, node endpoints and the DAX cluster itself. When
you receive a successful response from this action, DAX immediately
begins deleting the cluster; you cannot cancel or revert this action.

### Usage

    dax_delete_cluster(ClusterName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dax_delete_cluster_:_ClusterName">ClusterName</code></td>
<td><p>[required] The name of the cluster to be deleted.</p></td>
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

    svc$delete_cluster(
      ClusterName = "string"
    )
