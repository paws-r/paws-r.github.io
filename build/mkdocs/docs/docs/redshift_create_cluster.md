<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new cluster with the specified parameters

### Description

Creates a new cluster with the specified parameters.

To create a cluster in Virtual Private Cloud (VPC), you must provide a
cluster subnet group name. The cluster subnet group identifies the
subnets of your VPC that Amazon Redshift uses when creating the cluster.
For more information about managing clusters, go to [Amazon Redshift
Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_create_cluster(DBName, ClusterIdentifier, ClusterType,
      NodeType, MasterUsername, MasterUserPassword, ClusterSecurityGroups,
      VpcSecurityGroupIds, ClusterSubnetGroupName, AvailabilityZone,
      PreferredMaintenanceWindow, ClusterParameterGroupName,
      AutomatedSnapshotRetentionPeriod, ManualSnapshotRetentionPeriod, Port,
      ClusterVersion, AllowVersionUpgrade, NumberOfNodes, PubliclyAccessible,
      Encrypted, HsmClientCertificateIdentifier, HsmConfigurationIdentifier,
      ElasticIp, Tags, KmsKeyId, EnhancedVpcRouting, AdditionalInfo, IamRoles,
      MaintenanceTrackName, SnapshotScheduleIdentifier,
      AvailabilityZoneRelocation, AquaConfigurationStatus, DefaultIamRoleArn,
      LoadSampleData)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="redshift_create_cluster_:_DBName">DBName</code></td>
<td><p>The name of the first database to be created when the cluster is
created.</p>
<p>To create additional databases after the cluster is created, connect
to the cluster with a SQL client and use SQL commands to create a
database. For more information, go to <a
href="https://docs.aws.amazon.com/redshift/latest/gsg/t_creating_database.html">Create
a Database</a> in the Amazon Redshift Database Developer Guide.</p>
<p>Default: <code>dev</code></p>
<p>Constraints:</p>
<ul>
<li><p>Must contain 1 to 64 alphanumeric characters.</p></li>
<li><p>Must contain only lowercase letters.</p></li>
<li><p>Cannot be a word that is reserved by the service. A list of
reserved words can be found in <a
href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved
Words</a> in the Amazon Redshift Database Developer Guide.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] A unique identifier for the cluster. You use this
identifier to refer to the cluster for any subsequent cluster operations
such as deleting or modifying. The identifier also appears in the Amazon
Redshift console.</p>
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
<p>Example: <code>myexamplecluster</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_:_ClusterType">ClusterType</code></td>
<td><p>The type of the cluster. When cluster type is specified as</p>
<ul>
<li><p><code>single-node</code>, the <strong>NumberOfNodes</strong>
parameter is not required.</p></li>
<li><p><code>multi-node</code>, the <strong>NumberOfNodes</strong>
parameter is required.</p></li>
</ul>
<p>Valid Values: <code>multi-node</code> | <code>single-node</code></p>
<p>Default: <code>multi-node</code></p></td>
</tr>
<tr class="even">
<td><code id="redshift_create_cluster_:_NodeType">NodeType</code></td>
<td><p>[required] The node type to be provisioned for the cluster. For
information about node types, go to <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes">Working
with Clusters</a> in the <em>Amazon Redshift Cluster Management
Guide</em>.</p>
<p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> |
<code>dc1.large</code> | <code>dc1.8xlarge</code> |
<code>dc2.large</code> | <code>dc2.8xlarge</code> |
<code>ra3.xlplus</code> | <code>ra3.4xlarge</code> |
<code>ra3.16xlarge</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_:_MasterUsername">MasterUsername</code></td>
<td><p>[required] The user name associated with the admin user for the
cluster that is being created.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 - 128 alphanumeric characters or hyphens. The user name
can't be <code>PUBLIC</code>.</p></li>
<li><p>Must contain only lowercase letters, numbers, underscore, plus
sign, period (dot), at symbol (@), or hyphen.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>Must not contain a colon (:) or a slash (/).</p></li>
<li><p>Cannot be a reserved word. A list of reserved words can be found
in <a
href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved
Words</a> in the Amazon Redshift Database Developer Guide.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_MasterUserPassword">MasterUserPassword</code></td>
<td><p>[required] The password associated with the admin user for the
cluster that is being created.</p>
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
<tr class="odd">
<td><code
id="redshift_create_cluster_:_ClusterSecurityGroups">ClusterSecurityGroups</code></td>
<td><p>A list of security groups to be associated with this cluster.</p>
<p>Default: The default cluster security group for Amazon
Redshift.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>A list of Virtual Private Cloud (VPC) security groups to be
associated with the cluster.</p>
<p>Default: The default VPC security group is associated with the
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_:_ClusterSubnetGroupName">ClusterSubnetGroupName</code></td>
<td><p>The name of a cluster subnet group to be associated with this
cluster.</p>
<p>If this parameter is not provided the resulting cluster will be
deployed outside virtual private cloud (VPC).</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>The EC2 Availability Zone (AZ) in which you want Amazon Redshift
to provision the cluster. For example, if you have several EC2 instances
running in a specific Availability Zone, then you might want the cluster
to be provisioned in the same zone in order to decrease network
latency.</p>
<p>Default: A random, system-chosen Availability Zone in the region that
is specified by the endpoint.</p>
<p>Example: <code style="white-space: pre;">⁠us-east-2d⁠</code></p>
<p>Constraint: The specified Availability Zone must be in the same
region as the current endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>The weekly time range (in UTC) during which automated cluster
maintenance can occur.</p>
<p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code></p>
<p>Default: A 30-minute window selected at random from an 8-hour block
of time per region, occurring on a random day of the week. For more
information about the time blocks for each region, see <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows">Maintenance
Windows</a> in Amazon Redshift Cluster Management Guide.</p>
<p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
<p>Constraints: Minimum 30-minute window.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_ClusterParameterGroupName">ClusterParameterGroupName</code></td>
<td><p>The name of the parameter group to be associated with this
cluster.</p>
<p>Default: The default Amazon Redshift cluster parameter group. For
information about the default parameter group, go to <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Working
with Amazon Redshift Parameter Groups</a></p>
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
id="redshift_create_cluster_:_AutomatedSnapshotRetentionPeriod">AutomatedSnapshotRetentionPeriod</code></td>
<td><p>The number of days that automated snapshots are retained. If the
value is 0, automated snapshots are disabled. Even if automated
snapshots are disabled, you can still create manual snapshots when you
want with <code>create_cluster_snapshot</code>.</p>
<p>You can't disable automated snapshots for RA3 node types. Set the
automated retention period from 1-35 days.</p>
<p>Default: <code>1</code></p>
<p>Constraints: Must be a value from 0 to 35.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_ManualSnapshotRetentionPeriod">ManualSnapshotRetentionPeriod</code></td>
<td><p>The default number of days to retain a manual snapshot. If the
value is -1, the snapshot is retained indefinitely. This setting doesn't
change the retention period of existing snapshots.</p>
<p>The value must be either -1 or an integer between 1 and
3,653.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_create_cluster_:_Port">Port</code></td>
<td><p>The port number on which the cluster accepts incoming
connections.</p>
<p>The cluster is accessible only via the JDBC and ODBC connection
strings. Part of the connection string requires the port on which the
cluster will listen for incoming connections.</p>
<p>Default: <code>5439</code></p>
<p>Valid Values: <code>1150-65535</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_ClusterVersion">ClusterVersion</code></td>
<td><p>The version of the Amazon Redshift engine software that you want
to deploy on the cluster.</p>
<p>The version selected runs on all the nodes in the cluster.</p>
<p>Constraints: Only version 1.0 is currently available.</p>
<p>Example: <code>1.0</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_:_AllowVersionUpgrade">AllowVersionUpgrade</code></td>
<td><p>If <code>true</code>, major version upgrades can be applied
during the maintenance window to the Amazon Redshift engine that is
running on the cluster.</p>
<p>When a new major version of the Amazon Redshift engine is released,
you can request that the service automatically apply upgrades during the
maintenance window to the Amazon Redshift engine that is running on your
cluster.</p>
<p>Default: <code>true</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_NumberOfNodes">NumberOfNodes</code></td>
<td><p>The number of compute nodes in the cluster. This parameter is
required when the <strong>ClusterType</strong> parameter is specified as
<code>multi-node</code>.</p>
<p>For information about determining how many nodes you need, go to <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes">Working
with Clusters</a> in the <em>Amazon Redshift Cluster Management
Guide</em>.</p>
<p>If you don't specify this parameter, you get a single-node cluster.
When requesting a multi-node cluster, you must specify the number of
nodes that you want in the cluster.</p>
<p>Default: <code>1</code></p>
<p>Constraints: Value must be at least 1 and no more than 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_:_PubliclyAccessible">PubliclyAccessible</code></td>
<td><p>If <code>true</code>, the cluster can be accessed from a public
network.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_create_cluster_:_Encrypted">Encrypted</code></td>
<td><p>If <code>true</code>, the data in the cluster is encrypted at
rest.</p>
<p>Default: false</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_:_HsmClientCertificateIdentifier">HsmClientCertificateIdentifier</code></td>
<td><p>Specifies the name of the HSM client certificate the Amazon
Redshift cluster uses to retrieve the data encryption keys stored in an
HSM.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_HsmConfigurationIdentifier">HsmConfigurationIdentifier</code></td>
<td><p>Specifies the name of the HSM configuration that contains the
information the Amazon Redshift cluster can use to retrieve and store
keys in an HSM.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_create_cluster_:_ElasticIp">ElasticIp</code></td>
<td><p>The Elastic IP (EIP) address for the cluster.</p>
<p>Constraints: The cluster must be provisioned in EC2-VPC and
publicly-accessible through an Internet gateway. Don't specify the
Elastic IP address for a publicly accessible cluster with availability
zone relocation turned on. For more information about provisioning
clusters in EC2-VPC, go to <a
href="https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms">Supported
Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster
Management Guide.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_create_cluster_:_Tags">Tags</code></td>
<td><p>A list of tag instances.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_create_cluster_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Key Management Service (KMS) key ID of the encryption key
that you want to use to encrypt data in the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_EnhancedVpcRouting">EnhancedVpcRouting</code></td>
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
id="redshift_create_cluster_:_AdditionalInfo">AdditionalInfo</code></td>
<td><p>Reserved.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_create_cluster_:_IamRoles">IamRoles</code></td>
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
id="redshift_create_cluster_:_MaintenanceTrackName">MaintenanceTrackName</code></td>
<td><p>An optional parameter for the name of the maintenance track for
the cluster. If you don't provide a maintenance track name, the cluster
is assigned to the <code>current</code> track.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_SnapshotScheduleIdentifier">SnapshotScheduleIdentifier</code></td>
<td><p>A unique identifier for the snapshot schedule.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_:_AvailabilityZoneRelocation">AvailabilityZoneRelocation</code></td>
<td><p>The option to enable relocation for an Amazon Redshift cluster
between Availability Zones after the cluster is created.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_AquaConfigurationStatus">AquaConfigurationStatus</code></td>
<td><p>This parameter is retired. It does not set the AQUA configuration
status. Amazon Redshift automatically determines whether to use AQUA
(Advanced Query Accelerator).</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_:_DefaultIamRoleArn">DefaultIamRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) for the IAM role that was set as
default for the cluster when the cluster was created.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_:_LoadSampleData">LoadSampleData</code></td>
<td><p>A flag that specifies whether to load sample data once the
cluster is created.</p></td>
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

    svc$create_cluster(
      DBName = "string",
      ClusterIdentifier = "string",
      ClusterType = "string",
      NodeType = "string",
      MasterUsername = "string",
      MasterUserPassword = "string",
      ClusterSecurityGroups = list(
        "string"
      ),
      VpcSecurityGroupIds = list(
        "string"
      ),
      ClusterSubnetGroupName = "string",
      AvailabilityZone = "string",
      PreferredMaintenanceWindow = "string",
      ClusterParameterGroupName = "string",
      AutomatedSnapshotRetentionPeriod = 123,
      ManualSnapshotRetentionPeriod = 123,
      Port = 123,
      ClusterVersion = "string",
      AllowVersionUpgrade = TRUE|FALSE,
      NumberOfNodes = 123,
      PubliclyAccessible = TRUE|FALSE,
      Encrypted = TRUE|FALSE,
      HsmClientCertificateIdentifier = "string",
      HsmConfigurationIdentifier = "string",
      ElasticIp = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      KmsKeyId = "string",
      EnhancedVpcRouting = TRUE|FALSE,
      AdditionalInfo = "string",
      IamRoles = list(
        "string"
      ),
      MaintenanceTrackName = "string",
      SnapshotScheduleIdentifier = "string",
      AvailabilityZoneRelocation = TRUE|FALSE,
      AquaConfigurationStatus = "enabled"|"disabled"|"auto",
      DefaultIamRoleArn = "string",
      LoadSampleData = "string"
    )
