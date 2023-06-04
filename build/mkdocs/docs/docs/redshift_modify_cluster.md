<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_modify_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the settings for a cluster

### Description

Modifies the settings for a cluster.

You can also change node type and the number of nodes to scale up or
down the cluster. When resizing a cluster, you must specify both the
number of nodes and the node type even if one of the parameters does not
change.

You can add another security or parameter group, or change the admin
user password. Resetting a cluster password or modifying the security
groups associated with a cluster do not need a reboot. However,
modifying a parameter group requires a reboot for parameters to take
effect. For more information about managing clusters, go to [Amazon
Redshift
Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_modify_cluster(ClusterIdentifier, ClusterType, NodeType,
      NumberOfNodes, ClusterSecurityGroups, VpcSecurityGroupIds,
      MasterUserPassword, ClusterParameterGroupName,
      AutomatedSnapshotRetentionPeriod, ManualSnapshotRetentionPeriod,
      PreferredMaintenanceWindow, ClusterVersion, AllowVersionUpgrade,
      HsmClientCertificateIdentifier, HsmConfigurationIdentifier,
      NewClusterIdentifier, PubliclyAccessible, ElasticIp, EnhancedVpcRouting,
      MaintenanceTrackName, Encrypted, KmsKeyId, AvailabilityZoneRelocation,
      AvailabilityZone, Port)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_modify_cluster_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The unique identifier of the cluster to be
modified.</p>
<p>Example: <code>examplecluster</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_:_ClusterType">ClusterType</code></td>
<td><p>The new cluster type.</p>
<p>When you submit your cluster resize request, your existing cluster
goes into a read-only mode. After Amazon Redshift provisions a new
cluster based on your resize requirements, there will be outage for a
period while the old cluster is deleted and your connection is switched
to the new cluster. You can use <code>describe_resize</code> to track
the progress of the resize request.</p>
<p>Valid Values: <code>multi-node | single-node</code></p></td>
</tr>
<tr class="odd">
<td><code id="redshift_modify_cluster_:_NodeType">NodeType</code></td>
<td><p>The new node type of the cluster. If you specify a new node type,
you must also specify the number of nodes parameter.</p>
<p>For more information about resizing clusters, go to <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/managing-cluster-operations.html">Resizing
Clusters in Amazon Redshift</a> in the <em>Amazon Redshift Cluster
Management Guide</em>.</p>
<p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> |
<code>dc1.large</code> | <code>dc1.8xlarge</code> |
<code>dc2.large</code> | <code>dc2.8xlarge</code> |
<code>ra3.xlplus</code> | <code>ra3.4xlarge</code> |
<code>ra3.16xlarge</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_:_NumberOfNodes">NumberOfNodes</code></td>
<td><p>The new number of nodes of the cluster. If you specify a new
number of nodes, you must also specify the node type parameter.</p>
<p>For more information about resizing clusters, go to <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/managing-cluster-operations.html">Resizing
Clusters in Amazon Redshift</a> in the <em>Amazon Redshift Cluster
Management Guide</em>.</p>
<p>Valid Values: Integer greater than <code>0</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_:_ClusterSecurityGroups">ClusterSecurityGroups</code></td>
<td><p>A list of cluster security groups to be authorized on this
cluster. This change is asynchronously applied as soon as possible.</p>
<p>Security groups currently associated with the cluster, and not in the
list of groups to apply, will be revoked from the cluster.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 alphanumeric characters or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of virtual private cloud (VPC) security groups to be
associated with the cluster. This change is asynchronously applied as
soon as possible.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>The new password for the cluster admin user. This change is
asynchronously applied as soon as possible. Between the time of the
request and the completion of the request, the
<code>MasterUserPassword</code> element exists in the
<code>PendingModifiedValues</code> element of the operation
response.</p>
<p>Operations never return the password, so this operation provides a
way to regain access to the admin user for a cluster if the password is
lost.</p>
<p>Default: Uses existing setting.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be between 8 and 64 characters in length.</p></li>
<li><p>Must contain at least one uppercase letter.</p></li>
<li><p>Must contain at least one lowercase letter.</p></li>
<li><p>Must contain one number.</p></li>
<li><p>Can be any printable ASCII character (ASCII code 33-126) except
<code style="white-space: pre;">⁠\'⁠</code> (single quote), <code
style="white-space: pre;">⁠\"⁠</code> (double quote), <code
style="white-space: pre;">⁠\⁠</code>, <code>/</code>, or
<code>@</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_:_ClusterParameterGroupName">ClusterParameterGroupName</code></td>
<td><p>The name of the cluster parameter group to apply to this cluster.
This change is applied only after the cluster is rebooted. To reboot a
cluster use <code>reboot_cluster</code>.</p>
<p>Default: Uses existing setting.</p>
<p>Constraints: The cluster parameter group must be in the same
parameter group family that matches the cluster version.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_:_AutomatedSnapshotRetentionPeriod">AutomatedSnapshotRetentionPeriod</code></td>
<td><p>The number of days that automated snapshots are retained. If the
value is 0, automated snapshots are disabled. Even if automated
snapshots are disabled, you can still create manual snapshots when you
want with <code>create_cluster_snapshot</code>.</p>
<p>If you decrease the automated snapshot retention period from its
current value, existing automated snapshots that fall outside of the new
retention period will be immediately deleted.</p>
<p>You can't disable automated snapshots for RA3 node types. Set the
automated retention period from 1-35 days.</p>
<p>Default: Uses existing setting.</p>
<p>Constraints: Must be a value from 0 to 35.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_:_ManualSnapshotRetentionPeriod">ManualSnapshotRetentionPeriod</code></td>
<td><p>The default for number of days that a newly created manual
snapshot is retained. If the value is -1, the manual snapshot is
retained indefinitely. This value doesn't retroactively change the
retention periods of existing manual snapshots.</p>
<p>The value must be either -1 or an integer between 1 and 3,653.</p>
<p>The default value is -1.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The weekly time range (in UTC) during which system maintenance
can occur, if necessary. If system maintenance is necessary during the
window, it may result in an outage.</p>
<p>This maintenance window change is made immediately. If the new
maintenance window indicates the current time, there must be at least
120 minutes between the current time and end of the window in order to
ensure that pending changes are applied.</p>
<p>Default: Uses existing setting.</p>
<p>Format: ddd:hh24:mi-ddd:hh24:mi, for example
<code>wed:07:30-wed:08:00</code>.</p>
<p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
<p>Constraints: Must be at least 30 minutes.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_:_ClusterVersion">ClusterVersion</code></td>
<td><p>The new version number of the Amazon Redshift engine to upgrade
to.</p>
<p>For major version upgrades, if a non-default cluster parameter group
is currently in use, a new cluster parameter group in the cluster
parameter group family for the new version must be specified. The new
cluster parameter group can be the default for that cluster parameter
group family. For more information about parameters and parameter
groups, go to <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon
Redshift Parameter Groups</a> in the <em>Amazon Redshift Cluster
Management Guide</em>.</p>
<p>Example: <code>1.0</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_:_AllowVersionUpgrade">AllowVersionUpgrade</code></td>
<td><p>If <code>true</code>, major version upgrades will be applied
automatically to the cluster during the maintenance window.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_:_HsmClientCertificateIdentifier">HsmClientCertificateIdentifier</code></td>
<td><p>Specifies the name of the HSM client certificate the Amazon
Redshift cluster uses to retrieve the data encryption keys stored in an
HSM.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_:_HsmConfigurationIdentifier">HsmConfigurationIdentifier</code></td>
<td><p>Specifies the name of the HSM configuration that contains the
information the Amazon Redshift cluster can use to retrieve and store
keys in an HSM.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_:_NewClusterIdentifier">NewClusterIdentifier</code></td>
<td><p>The new identifier for the cluster.</p>
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
</ul>
<p>Example: <code>examplecluster</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_:_PubliclyAccessible">PubliclyAccessible</code></td>
<td><p>If <code>true</code>, the cluster can be accessed from a public
network. Only clusters in VPCs can be set to be publicly
available.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_modify_cluster_:_ElasticIp">ElasticIp</code></td>
<td><p>The Elastic IP (EIP) address for the cluster.</p>
<p>Constraints: The cluster must be provisioned in EC2-VPC and
publicly-accessible through an Internet gateway. For more information
about provisioning clusters in EC2-VPC, go to <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms">Supported
Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster
Management Guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_:_EnhancedVpcRouting">EnhancedVpcRouting</code></td>
<td><p>An option that specifies whether to create the cluster with
enhanced VPC routing enabled. To create a cluster that uses enhanced VPC
routing, the cluster must be in a VPC. For more information, see <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html">Enhanced
VPC Routing</a> in the Amazon Redshift Cluster Management Guide.</p>
<p>If this option is <code>true</code>, enhanced VPC routing is
enabled.</p>
<p>Default: false</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_:_MaintenanceTrackName">MaintenanceTrackName</code></td>
<td><p>The name for the maintenance track that you want to assign for
the cluster. This name change is asynchronous. The new track name stays
in the <code>PendingModifiedValues</code> for the cluster until the next
maintenance window. When the maintenance track changes, the cluster is
switched to the latest cluster release available for the maintenance
track. At this point, the maintenance track name is applied.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_modify_cluster_:_Encrypted">Encrypted</code></td>
<td><p>Indicates whether the cluster is encrypted. If the value is
encrypted (true) and you provide a value for the <code>KmsKeyId</code>
parameter, we encrypt the cluster with the provided
<code>KmsKeyId</code>. If you don't provide a <code>KmsKeyId</code>, we
encrypt with the default key.</p>
<p>If the value is not encrypted (false), then the cluster is
decrypted.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_modify_cluster_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Key Management Service (KMS) key ID of the encryption key
that you want to use to encrypt data in the cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_:_AvailabilityZoneRelocation">AvailabilityZoneRelocation</code></td>
<td><p>The option to enable relocation for an Amazon Redshift cluster
between Availability Zones after the cluster modification is
complete.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The option to initiate relocation for an Amazon Redshift cluster
to the target Availability Zone.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_modify_cluster_:_Port">Port</code></td>
<td><p>The option to change the port of an Amazon Redshift
cluster.</p></td>
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

    svc$modify_cluster(
      ClusterIdentifier = "string",
      ClusterType = "string",
      NodeType = "string",
      NumberOfNodes = 123,
      ClusterSecurityGroups = list(
        "string"
      ),
      VpcSecurityGroupIds = list(
        "string"
      ),
      MasterUserPassword = "string",
      ClusterParameterGroupName = "string",
      AutomatedSnapshotRetentionPeriod = 123,
      ManualSnapshotRetentionPeriod = 123,
      PreferredMaintenanceWindow = "string",
      ClusterVersion = "string",
      AllowVersionUpgrade = TRUE|FALSE,
      HsmClientCertificateIdentifier = "string",
      HsmConfigurationIdentifier = "string",
      NewClusterIdentifier = "string",
      PubliclyAccessible = TRUE|FALSE,
      ElasticIp = "string",
      EnhancedVpcRouting = TRUE|FALSE,
      MaintenanceTrackName = "string",
      Encrypted = TRUE|FALSE,
      KmsKeyId = "string",
      AvailabilityZoneRelocation = TRUE|FALSE,
      AvailabilityZone = "string",
      Port = 123
    )
