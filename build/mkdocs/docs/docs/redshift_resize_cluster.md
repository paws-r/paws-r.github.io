<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_resize_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the size of the cluster

### Description

Changes the size of the cluster. You can change the cluster's type, or
change the number or type of nodes. The default behavior is to use the
elastic resize method. With an elastic resize, your cluster is available
for read and write operations more quickly than with the classic resize
method.

Elastic resize operations have the following restrictions:

-   You can only resize clusters of the following types:

    -   dc1.large (if your cluster is in a VPC)

    -   dc1.8xlarge (if your cluster is in a VPC)

    -   dc2.large

    -   dc2.8xlarge

    -   ds2.xlarge

    -   ds2.8xlarge

    -   ra3.xlplus

    -   ra3.4xlarge

    -   ra3.16xlarge

-   The type of nodes that you add must match the node type for the
    cluster.

### Usage

    redshift_resize_cluster(ClusterIdentifier, ClusterType, NodeType,
      NumberOfNodes, Classic, ReservedNodeId, TargetReservedNodeOfferingId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_resize_cluster_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The unique identifier for the cluster to
resize.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_resize_cluster_:_ClusterType">ClusterType</code></td>
<td><p>The new cluster type for the specified cluster.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_resize_cluster_:_NodeType">NodeType</code></td>
<td><p>The new node type for the nodes you are adding. If not specified,
the cluster's current node type is used.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_resize_cluster_:_NumberOfNodes">NumberOfNodes</code></td>
<td><p>The new number of nodes for the cluster. If not specified, the
cluster's current number of nodes is used.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_resize_cluster_:_Classic">Classic</code></td>
<td><p>A boolean value indicating whether the resize operation is using
the classic resize process. If you don't provide this parameter or set
the value to <code>false</code>, the resize type is elastic.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_resize_cluster_:_ReservedNodeId">ReservedNodeId</code></td>
<td><p>The identifier of the reserved node.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_resize_cluster_:_TargetReservedNodeOfferingId">TargetReservedNodeOfferingId</code></td>
<td><p>The identifier of the target reserved node offering.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Cluster = list(
        ClusterIdentifier = "string",
        NodeType = "string",
        ClusterStatus = "string",
        ClusterAvailabilityStatus = "string",
        ModifyStatus = "string",
        MasterUsername = "string",
        DBName = "string",
        Endpoint = list(
          Address = "string",
          Port = 123,
          VpcEndpoints = list(
            list(
              VpcEndpointId = "string",
              VpcId = "string",
              NetworkInterfaces = list(
                list(
                  NetworkInterfaceId = "string",
                  SubnetId = "string",
                  PrivateIpAddress = "string",
                  AvailabilityZone = "string"
                )
              )
            )
          )
        ),
        ClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        AutomatedSnapshotRetentionPeriod = 123,
        ManualSnapshotRetentionPeriod = 123,
        ClusterSecurityGroups = list(
          list(
            ClusterSecurityGroupName = "string",
            Status = "string"
          )
        ),
        VpcSecurityGroups = list(
          list(
            VpcSecurityGroupId = "string",
            Status = "string"
          )
        ),
        ClusterParameterGroups = list(
          list(
            ParameterGroupName = "string",
            ParameterApplyStatus = "string",
            ClusterParameterStatusList = list(
              list(
                ParameterName = "string",
                ParameterApplyStatus = "string",
                ParameterApplyErrorDescription = "string"
              )
            )
          )
        ),
        ClusterSubnetGroupName = "string",
        VpcId = "string",
        AvailabilityZone = "string",
        PreferredMaintenanceWindow = "string",
        PendingModifiedValues = list(
          MasterUserPassword = "string",
          NodeType = "string",
          NumberOfNodes = 123,
          ClusterType = "string",
          ClusterVersion = "string",
          AutomatedSnapshotRetentionPeriod = 123,
          ClusterIdentifier = "string",
          PubliclyAccessible = TRUE|FALSE,
          EnhancedVpcRouting = TRUE|FALSE,
          MaintenanceTrackName = "string",
          EncryptionType = "string"
        ),
        ClusterVersion = "string",
        AllowVersionUpgrade = TRUE|FALSE,
        NumberOfNodes = 123,
        PubliclyAccessible = TRUE|FALSE,
        Encrypted = TRUE|FALSE,
        RestoreStatus = list(
          Status = "string",
          CurrentRestoreRateInMegaBytesPerSecond = 123.0,
          SnapshotSizeInMegaBytes = 123,
          ProgressInMegaBytes = 123,
          ElapsedTimeInSeconds = 123,
          EstimatedTimeToCompletionInSeconds = 123
        ),
        DataTransferProgress = list(
          Status = "string",
          CurrentRateInMegaBytesPerSecond = 123.0,
          TotalDataInMegaBytes = 123,
          DataTransferredInMegaBytes = 123,
          EstimatedTimeToCompletionInSeconds = 123,
          ElapsedTimeInSeconds = 123
        ),
        HsmStatus = list(
          HsmClientCertificateIdentifier = "string",
          HsmConfigurationIdentifier = "string",
          Status = "string"
        ),
        ClusterSnapshotCopyStatus = list(
          DestinationRegion = "string",
          RetentionPeriod = 123,
          ManualSnapshotRetentionPeriod = 123,
          SnapshotCopyGrantName = "string"
        ),
        ClusterPublicKey = "string",
        ClusterNodes = list(
          list(
            NodeRole = "string",
            PrivateIPAddress = "string",
            PublicIPAddress = "string"
          )
        ),
        ElasticIpStatus = list(
          ElasticIp = "string",
          Status = "string"
        ),
        ClusterRevisionNumber = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        KmsKeyId = "string",
        EnhancedVpcRouting = TRUE|FALSE,
        IamRoles = list(
          list(
            IamRoleArn = "string",
            ApplyStatus = "string"
          )
        ),
        PendingActions = list(
          "string"
        ),
        MaintenanceTrackName = "string",
        ElasticResizeNumberOfNodeOptions = "string",
        DeferredMaintenanceWindows = list(
          list(
            DeferMaintenanceIdentifier = "string",
            DeferMaintenanceStartTime = as.POSIXct(
              "2015-01-01"
            ),
            DeferMaintenanceEndTime = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        SnapshotScheduleIdentifier = "string",
        SnapshotScheduleState = "MODIFYING"|"ACTIVE"|"FAILED",
        ExpectedNextSnapshotScheduleTime = as.POSIXct(
          "2015-01-01"
        ),
        ExpectedNextSnapshotScheduleTimeStatus = "string",
        NextMaintenanceWindowStartTime = as.POSIXct(
          "2015-01-01"
        ),
        ResizeInfo = list(
          ResizeType = "string",
          AllowCancelResize = TRUE|FALSE
        ),
        AvailabilityZoneRelocationStatus = "string",
        ClusterNamespaceArn = "string",
        TotalStorageCapacityInMegaBytes = 123,
        AquaConfiguration = list(
          AquaStatus = "enabled"|"disabled"|"applying",
          AquaConfigurationStatus = "enabled"|"disabled"|"auto"
        ),
        DefaultIamRoleArn = "string",
        ReservedNodeExchangeStatus = list(
          ReservedNodeExchangeRequestId = "string",
          Status = "REQUESTED"|"PENDING"|"IN_PROGRESS"|"RETRYING"|"SUCCEEDED"|"FAILED",
          RequestTime = as.POSIXct(
            "2015-01-01"
          ),
          SourceReservedNodeId = "string",
          SourceReservedNodeType = "string",
          SourceReservedNodeCount = 123,
          TargetReservedNodeOfferingId = "string",
          TargetReservedNodeType = "string",
          TargetReservedNodeCount = 123
        )
      )
    )

### Request syntax

    svc$resize_cluster(
      ClusterIdentifier = "string",
      ClusterType = "string",
      NodeType = "string",
      NumberOfNodes = 123,
      Classic = TRUE|FALSE,
      ReservedNodeId = "string",
      TargetReservedNodeOfferingId = "string"
    )
