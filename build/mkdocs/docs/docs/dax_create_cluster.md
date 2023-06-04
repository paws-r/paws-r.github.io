<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_create_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a DAX cluster

### Description

Creates a DAX cluster. All nodes in the cluster run the same DAX caching
software.

### Usage

    dax_create_cluster(ClusterName, NodeType, Description,
      ReplicationFactor, AvailabilityZones, SubnetGroupName, SecurityGroupIds,
      PreferredMaintenanceWindow, NotificationTopicArn, IamRoleArn,
      ParameterGroupName, Tags, SSESpecification,
      ClusterEndpointEncryptionType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dax_create_cluster_:_ClusterName">ClusterName</code></td>
<td><p>[required] The cluster identifier. This parameter is stored as a
lowercase string.</p>
<p><strong>Constraints:</strong></p>
<ul>
<li><p>A name must contain from 1 to 20 alphanumeric characters or
hyphens.</p></li>
<li><p>The first character must be a letter.</p></li>
<li><p>A name cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="dax_create_cluster_:_NodeType">NodeType</code></td>
<td><p>[required] The compute and memory capacity of the nodes in the
cluster.</p></td>
</tr>
<tr class="odd">
<td><code id="dax_create_cluster_:_Description">Description</code></td>
<td><p>A description of the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_create_cluster_:_ReplicationFactor">ReplicationFactor</code></td>
<td><p>[required] The number of nodes in the DAX cluster. A replication
factor of 1 will create a single-node cluster, without any read
replicas. For additional fault tolerance, you can create a multiple node
cluster with one or more read replicas. To do this, set
<code>ReplicationFactor</code> to a number between 3 (one primary and
two read replicas) and 10 (one primary and nine read replicas). <code
style="white-space: pre;">⁠If the AvailabilityZones⁠</code> parameter is
provided, its length must equal the <code>ReplicationFactor</code>.</p>
<p>AWS recommends that you have at least two read replicas per
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="dax_create_cluster_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>The Availability Zones (AZs) in which the cluster nodes will
reside after the cluster has been created or updated. If provided, the
length of this list must equal the <code>ReplicationFactor</code>
parameter. If you omit this parameter, DAX will spread the nodes across
Availability Zones for the highest availability.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_create_cluster_:_SubnetGroupName">SubnetGroupName</code></td>
<td><p>The name of the subnet group to be used for the replication
group.</p>
<p>DAX clusters can only run in an Amazon VPC environment. All of the
subnets that you specify in a subnet group must exist in the same
VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="dax_create_cluster_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>A list of security group IDs to be assigned to each node in the
DAX cluster. (Each of the security group ID is system-generated.)</p>
<p>If this parameter is not specified, DAX assigns the default VPC
security group to each node.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_create_cluster_:_PreferredMaintenanceWindow">PreferredMaintenanceWindow</code></td>
<td><p>Specifies the weekly time range during which maintenance on the
DAX cluster is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period. Valid values for <code>ddd</code> are:</p>
<ul>
<li><p><code>sun</code></p></li>
<li><p><code>mon</code></p></li>
<li><p><code>tue</code></p></li>
<li><p><code>wed</code></p></li>
<li><p><code>thu</code></p></li>
<li><p><code>fri</code></p></li>
<li><p><code>sat</code></p></li>
</ul>
<p>Example: <code>sun:05:00-sun:09:00</code></p>
<p>If you don't specify a preferred maintenance window when you create
or modify a cache cluster, DAX assigns a 60-minute maintenance window on
a randomly selected day of the week.</p></td>
</tr>
<tr class="odd">
<td><code
id="dax_create_cluster_:_NotificationTopicArn">NotificationTopicArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which
notifications will be sent.</p>
<p>The Amazon SNS topic owner must be same as the DAX cluster
owner.</p></td>
</tr>
<tr class="even">
<td><code id="dax_create_cluster_:_IamRoleArn">IamRoleArn</code></td>
<td><p>[required] A valid Amazon Resource Name (ARN) that identifies an
IAM role. At runtime, DAX will assume this role and use the role's
permissions to access DynamoDB on your behalf.</p></td>
</tr>
<tr class="odd">
<td><code
id="dax_create_cluster_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>The parameter group to be associated with the DAX
cluster.</p></td>
</tr>
<tr class="even">
<td><code id="dax_create_cluster_:_Tags">Tags</code></td>
<td><p>A set of tags to associate with the DAX cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="dax_create_cluster_:_SSESpecification">SSESpecification</code></td>
<td><p>Represents the settings used to enable server-side encryption on
the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_create_cluster_:_ClusterEndpointEncryptionType">ClusterEndpointEncryptionType</code></td>
<td><p>The type of encryption the cluster's endpoint should support.
Values are:</p>
<ul>
<li><p><code>NONE</code> for no encryption</p></li>
<li><p><code>TLS</code> for Transport Layer Security</p></li>
</ul></td>
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

    svc$create_cluster(
      ClusterName = "string",
      NodeType = "string",
      Description = "string",
      ReplicationFactor = 123,
      AvailabilityZones = list(
        "string"
      ),
      SubnetGroupName = "string",
      SecurityGroupIds = list(
        "string"
      ),
      PreferredMaintenanceWindow = "string",
      NotificationTopicArn = "string",
      IamRoleArn = "string",
      ParameterGroupName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      SSESpecification = list(
        Enabled = TRUE|FALSE
      ),
      ClusterEndpointEncryptionType = "NONE"|"TLS"
    )
