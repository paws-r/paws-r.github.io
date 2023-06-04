<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_update_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the settings for a DAX cluster

### Description

Modifies the settings for a DAX cluster. You can use this action to
change one or more cluster configuration parameters by specifying the
parameters and the new values.

### Usage

    dax_update_cluster(ClusterName, Description, PreferredMaintenanceWindow,
      NotificationTopicArn, NotificationTopicStatus, ParameterGroupName,
      SecurityGroupIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dax_update_cluster_:_ClusterName">ClusterName</code></td>
<td><p>[required] The name of the DAX cluster to be modified.</p></td>
</tr>
<tr class="even">
<td><code id="dax_update_cluster_:_Description">Description</code></td>
<td><p>A description of the changes being made to the cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="dax_update_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>A range of time when maintenance of DAX cluster software will be
performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster
maintenance normally takes less than 30 minutes, and is performed
automatically within the maintenance window.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_update_cluster_:_NotificationTopicArn">NotificationTopicArn</code></td>
<td><p>The Amazon Resource Name (ARN) that identifies the
topic.</p></td>
</tr>
<tr class="odd">
<td><code
id="dax_update_cluster_:_NotificationTopicStatus">NotificationTopicStatus</code></td>
<td><p>The current state of the topic. A value of “active” means that
notifications will be sent to the topic. A value of “inactive” means
that notifications will not be sent to the topic.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_update_cluster_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>The name of a parameter group for this cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="dax_update_cluster_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>A list of user-specified security group IDs to be assigned to
each node in the DAX cluster. If this parameter is not specified, DAX
assigns the default VPC security group to each node.</p></td>
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

    svc$update_cluster(
      ClusterName = "string",
      Description = "string",
      PreferredMaintenanceWindow = "string",
      NotificationTopicArn = "string",
      NotificationTopicStatus = "string",
      ParameterGroupName = "string",
      SecurityGroupIds = list(
        "string"
      )
    )
