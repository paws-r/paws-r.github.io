<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_reboot_node</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Reboots a single node of a DAX cluster

### Description

Reboots a single node of a DAX cluster. The reboot action takes place as
soon as possible. During the reboot, the node status is set to
REBOOTING.

`reboot_node` restarts the DAX engine process and does not remove the
contents of the cache.

### Usage

    dax_reboot_node(ClusterName, NodeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dax_reboot_node_:_ClusterName">ClusterName</code></td>
<td><p>[required] The name of the DAX cluster containing the node to be
rebooted.</p></td>
</tr>
<tr class="even">
<td><code id="dax_reboot_node_:_NodeId">NodeId</code></td>
<td><p>[required] The system-assigned ID of the node to be
rebooted.</p></td>
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

    svc$reboot_node(
      ClusterName = "string",
      NodeId = "string"
    )
