<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_restore_from_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new cluster from a snapshot

### Description

Creates a new cluster from a snapshot. By default, Amazon Redshift
creates the resulting cluster with the same configuration as the
original cluster from which the snapshot was created, except that the
new cluster is created with the default cluster security and parameter
groups. After Amazon Redshift creates the cluster, you can use the
`modify_cluster` API to associate a different security group and
different parameter group with the restored cluster. If you are using a
DS node type, you can also choose to change to another DS node type of
the same size during restore.

If you restore a cluster into a VPC, you must provide a cluster subnet
group where you want the cluster restored.

For more information about working with snapshots, go to [Amazon
Redshift
Snapshots](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_restore_from_cluster_snapshot(ClusterIdentifier,
      SnapshotIdentifier, SnapshotArn, SnapshotClusterIdentifier, Port,
      AvailabilityZone, AllowVersionUpgrade, ClusterSubnetGroupName,
      PubliclyAccessible, OwnerAccount, HsmClientCertificateIdentifier,
      HsmConfigurationIdentifier, ElasticIp, ClusterParameterGroupName,
      ClusterSecurityGroups, VpcSecurityGroupIds, PreferredMaintenanceWindow,
      AutomatedSnapshotRetentionPeriod, ManualSnapshotRetentionPeriod,
      KmsKeyId, NodeType, EnhancedVpcRouting, AdditionalInfo, IamRoles,
      MaintenanceTrackName, SnapshotScheduleIdentifier, NumberOfNodes,
      AvailabilityZoneRelocation, AquaConfigurationStatus, DefaultIamRoleArn,
      ReservedNodeId, TargetReservedNodeOfferingId, Encrypted)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The identifier of the cluster that will be created
from restoring the snapshot.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 alphanumeric characters or
hyphens.</p></li>
<li><p>Alphabetic characters must be lowercase.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
<li><p>Must be unique for all clusters within an Amazon Web Services
account.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>The name of the snapshot from which to create the new cluster.
This parameter isn't case sensitive. You must specify this parameter or
<code>snapshotArn</code>, but not both.</p>
<p>Example: <code>my-snapshot-id</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_SnapshotArn">SnapshotArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the snapshot associated with
the message to restore from a cluster. You must specify this parameter
or <code>snapshotIdentifier</code>, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_SnapshotClusterIdentifier">SnapshotClusterIdentifier</code></td>
<td><p>The name of the cluster the source snapshot was created from.
This parameter is required if your IAM user or role has a policy
containing a snapshot resource element that specifies anything other
than * for the cluster name.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_Port">Port</code></td>
<td><p>The port number on which the cluster accepts connections.</p>
<p>Default: The same port as the original cluster.</p>
<p>Constraints: Must be between <code>1115</code> and
<code>65535</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The Amazon EC2 Availability Zone in which to restore the
cluster.</p>
<p>Default: A random, system-chosen Availability Zone.</p>
<p>Example: <code style="white-space: pre;">⁠us-east-2a⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_AllowVersionUpgrade">AllowVersionUpgrade</code></td>
<td><p>If <code>true</code>, major version upgrades can be applied
during the maintenance window to the Amazon Redshift engine that is
running on the cluster.</p>
<p>Default: <code>true</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_ClusterSubnetGroupName">ClusterSubnetGroupName</code></td>
<td><p>The name of the subnet group where you want to cluster
restored.</p>
<p>A snapshot of cluster in VPC can be restored only in VPC. Therefore,
you must provide subnet group name where you want the cluster
restored.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_PubliclyAccessible">PubliclyAccessible</code></td>
<td><p>If <code>true</code>, the cluster can be accessed from a public
network.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_OwnerAccount">OwnerAccount</code></td>
<td><p>The Amazon Web Services account used to create or copy the
snapshot. Required if you are restoring a snapshot you do not own,
optional if you own the snapshot.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_HsmClientCertificateIdentifier">HsmClientCertificateIdentifier</code></td>
<td><p>Specifies the name of the HSM client certificate the Amazon
Redshift cluster uses to retrieve the data encryption keys stored in an
HSM.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_HsmConfigurationIdentifier">HsmConfigurationIdentifier</code></td>
<td><p>Specifies the name of the HSM configuration that contains the
information the Amazon Redshift cluster can use to retrieve and store
keys in an HSM.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_ElasticIp">ElasticIp</code></td>
<td><p>The Elastic IP (EIP) address for the cluster. Don't specify the
Elastic IP address for a publicly accessible cluster with availability
zone relocation turned on.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_ClusterParameterGroupName">ClusterParameterGroupName</code></td>
<td><p>The name of the parameter group to be associated with this
cluster.</p>
<p>Default: The default Amazon Redshift cluster parameter group. For
information about the default parameter group, go to <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working
with Amazon Redshift Parameter Groups</a>.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 alphanumeric characters or hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_ClusterSecurityGroups">ClusterSecurityGroups</code></td>
<td><p>A list of security groups to be associated with this cluster.</p>
<p>Default: The default cluster security group for Amazon Redshift.</p>
<p>Cluster security groups only apply to clusters outside of
VPCs.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of Virtual Private Cloud (VPC) security groups to be
associated with the cluster.</p>
<p>Default: The default VPC security group is associated with the
cluster.</p>
<p>VPC security groups only apply to clusters in VPCs.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The weekly time range (in UTC) during which automated cluster
maintenance can occur.</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>Default: The value selected for the cluster from which the snapshot
was taken. For more information about the time blocks for each region,
see <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows">Maintenance
Windows</a> in Amazon Redshift Cluster Management Guide.</p>
<p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
<p>Constraints: Minimum 30-minute window.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_AutomatedSnapshotRetentionPeriod">AutomatedSnapshotRetentionPeriod</code></td>
<td><p>The number of days that automated snapshots are retained. If the
value is 0, automated snapshots are disabled. Even if automated
snapshots are disabled, you can still create manual snapshots when you
want with <code>create_cluster_snapshot</code>.</p>
<p>You can't disable automated snapshots for RA3 node types. Set the
automated retention period from 1-35 days.</p>
<p>Default: The value selected for the cluster from which the snapshot
was taken.</p>
<p>Constraints: Must be a value from 0 to 35.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_ManualSnapshotRetentionPeriod">ManualSnapshotRetentionPeriod</code></td>
<td><p>The default number of days to retain a manual snapshot. If the
value is -1, the snapshot is retained indefinitely. This setting doesn't
change the retention period of existing snapshots.</p>
<p>The value must be either -1 or an integer between 1 and
3,653.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Key Management Service (KMS) key ID of the encryption key
that encrypts data in the cluster restored from a shared snapshot. You
can also provide the key ID when you restore from an unencrypted
snapshot to an encrypted cluster in the same account. Additionally, you
can specify a new KMS key ID when you restore from an encrypted snapshot
in the same account in order to change it. In that case, the restored
cluster is encrypted with the new KMS key ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_NodeType">NodeType</code></td>
<td><p>The node type that the restored cluster will be provisioned
with.</p>
<p>Default: The node type of the cluster from which the snapshot was
taken. You can modify this if you are using any DS node type. In that
case, you can choose to restore into another DS node type of the same
size. For example, you can restore ds1.8xlarge into ds2.8xlarge, or
ds1.xlarge into ds2.xlarge. If you have a DC instance type, you must
restore into that same instance type and size. In other words, you can
only restore a dc1.large instance type into another dc1.large instance
type or dc2.large instance type. You can't restore dc1.8xlarge to
dc2.8xlarge. First restore to a dc1.8xlarge cluster, then resize to a
dc2.8large cluster. For more information about node types, see <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes">About
Clusters and Nodes</a> in the <em>Amazon Redshift Cluster Management
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_EnhancedVpcRouting">EnhancedVpcRouting</code></td>
<td><p>An option that specifies whether to create the cluster with
enhanced VPC routing enabled. To create a cluster that uses enhanced VPC
routing, the cluster must be in a VPC. For more information, see <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced
VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p>
<p>If this option is <code>true</code>, enhanced VPC routing is
enabled.</p>
<p>Default: false</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_AdditionalInfo">AdditionalInfo</code></td>
<td><p>Reserved.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_IamRoles">IamRoles</code></td>
<td><p>A list of Identity and Access Management (IAM) roles that can be
used by the cluster to access other Amazon Web Services services. You
must supply the IAM roles in their Amazon Resource Name (ARN)
format.</p>
<p>The maximum number of IAM roles that you can associate is subject to
a quota. For more information, go to <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Quotas
and limits</a> in the <em>Amazon Redshift Cluster Management
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_MaintenanceTrackName">MaintenanceTrackName</code></td>
<td><p>The name of the maintenance track for the restored cluster. When
you take a snapshot, the snapshot inherits the
<code>MaintenanceTrack</code> value from the cluster. The snapshot might
be on a different track than the cluster that was the source for the
snapshot. For example, suppose that you take a snapshot of a cluster
that is on the current track and then change the cluster to be on the
trailing track. In this case, the snapshot and the source cluster are on
different tracks.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_SnapshotScheduleIdentifier">SnapshotScheduleIdentifier</code></td>
<td><p>A unique identifier for the snapshot schedule.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_NumberOfNodes">NumberOfNodes</code></td>
<td><p>The number of nodes specified when provisioning the restored
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_AvailabilityZoneRelocation">AvailabilityZoneRelocation</code></td>
<td><p>The option to enable relocation for an Amazon Redshift cluster
between Availability Zones after the cluster is restored.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_AquaConfigurationStatus">AquaConfigurationStatus</code></td>
<td><p>This parameter is retired. It does not set the AQUA configuration
status. Amazon Redshift automatically determines whether to use AQUA
(Advanced Query Accelerator).</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_DefaultIamRoleArn">DefaultIamRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) for the IAM role that was set as
default for the cluster when the cluster was last modified while it was
restored from a snapshot.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_ReservedNodeId">ReservedNodeId</code></td>
<td><p>The identifier of the target reserved node offering.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_restore_from_cluster_snapshot_:_TargetReservedNodeOfferingId">TargetReservedNodeOfferingId</code></td>
<td><p>The identifier of the target reserved node offering.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_restore_from_cluster_snapshot_:_Encrypted">Encrypted</code></td>
<td><p>Enables support for restoring an unencrypted snapshot to a
cluster encrypted with Key Management Service (KMS) and a customer
managed key.</p></td>
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

    svc$restore_from_cluster_snapshot(
      ClusterIdentifier = "string",
      SnapshotIdentifier = "string",
      SnapshotArn = "string",
      SnapshotClusterIdentifier = "string",
      Port = 123,
      AvailabilityZone = "string",
      AllowVersionUpgrade = TRUE|FALSE,
      ClusterSubnetGroupName = "string",
      PubliclyAccessible = TRUE|FALSE,
      OwnerAccount = "string",
      HsmClientCertificateIdentifier = "string",
      HsmConfigurationIdentifier = "string",
      ElasticIp = "string",
      ClusterParameterGroupName = "string",
      ClusterSecurityGroups = list(
        "string"
      ),
      VpcSecurityGroupIds = list(
        "string"
      ),
      PreferredMaintenanceWindow = "string",
      AutomatedSnapshotRetentionPeriod = 123,
      ManualSnapshotRetentionPeriod = 123,
      KmsKeyId = "string",
      NodeType = "string",
      EnhancedVpcRouting = TRUE|FALSE,
      AdditionalInfo = "string",
      IamRoles = list(
        "string"
      ),
      MaintenanceTrackName = "string",
      SnapshotScheduleIdentifier = "string",
      NumberOfNodes = 123,
      AvailabilityZoneRelocation = TRUE|FALSE,
      AquaConfigurationStatus = "enabled"|"disabled"|"auto",
      DefaultIamRoleArn = "string",
      ReservedNodeId = "string",
      TargetReservedNodeOfferingId = "string",
      Encrypted = TRUE|FALSE
    )
