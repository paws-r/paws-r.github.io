<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a previously provisioned cluster without its final snapshot being created

### Description

Deletes a previously provisioned cluster without its final snapshot
being created. A successful response from the web service indicates that
the request was received correctly. Use `describe_clusters` to monitor
the status of the deletion. The delete operation cannot be canceled or
reverted once submitted. For more information about managing clusters,
go to [Amazon Redshift
Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the *Amazon Redshift Cluster Management Guide*.

If you want to shut down the cluster and retain it for future use, set
*SkipFinalClusterSnapshot* to `false` and specify a name for
*FinalClusterSnapshotIdentifier*. You can later restore this snapshot to
resume using the cluster. If a final cluster snapshot is requested, the
status of the cluster will be "final-snapshot" while the snapshot is
being taken, then it's "deleting" once Amazon Redshift begins deleting
the cluster.

For more information about managing clusters, go to [Amazon Redshift
Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_delete_cluster(ClusterIdentifier, SkipFinalClusterSnapshot,
      FinalClusterSnapshotIdentifier, FinalClusterSnapshotRetentionPeriod)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_cluster_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The identifier of the cluster to be deleted.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain lowercase characters.</p></li>
<li><p>Must contain from 1 to 63 alphanumeric characters or
hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_delete_cluster_:_SkipFinalClusterSnapshot">SkipFinalClusterSnapshot</code></td>
<td><p>Determines whether a final snapshot of the cluster is created
before Amazon Redshift deletes the cluster. If <code>true</code>, a
final cluster snapshot is not created. If <code>false</code>, a final
cluster snapshot is created before the cluster is deleted.</p>
<p>The <em>FinalClusterSnapshotIdentifier</em> parameter must be
specified if <em>SkipFinalClusterSnapshot</em> is
<code>false</code>.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_delete_cluster_:_FinalClusterSnapshotIdentifier">FinalClusterSnapshotIdentifier</code></td>
<td><p>The identifier of the final snapshot that is to be created
immediately before deleting the cluster. If this parameter is provided,
<em>SkipFinalClusterSnapshot</em> must be <code>false</code>.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 alphanumeric characters.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_delete_cluster_:_FinalClusterSnapshotRetentionPeriod">FinalClusterSnapshotRetentionPeriod</code></td>
<td><p>The number of days that a manual snapshot is retained. If the
value is -1, the manual snapshot is retained indefinitely.</p>
<p>The value must be either -1 or an integer between 1 and 3,653.</p>
<p>The default value is -1.</p></td>
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

    svc$delete_cluster(
      ClusterIdentifier = "string",
      SkipFinalClusterSnapshot = TRUE|FALSE,
      FinalClusterSnapshotIdentifier = "string",
      FinalClusterSnapshotRetentionPeriod = 123
    )
