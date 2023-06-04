<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_reboot_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Reboots a cluster

### Description

Reboots a cluster. This action is taken as soon as possible. It results
in a momentary outage to the cluster, during which the cluster status is
set to `rebooting`. A cluster event is created when the reboot is
completed. Any pending cluster modifications (see `modify_cluster`) are
applied at this reboot. For more information about managing clusters, go
to [Amazon Redshift
Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_reboot_cluster(ClusterIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_reboot_cluster_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The cluster identifier.</p></td>
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

    svc$reboot_cluster(
      ClusterIdentifier = "string"
    )
