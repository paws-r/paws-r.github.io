<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_create_nodegroup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a managed node group for an Amazon EKS cluster

### Description

Creates a managed node group for an Amazon EKS cluster. You can only
create a node group for your cluster that is equal to the current
Kubernetes version for the cluster. All node groups are created with the
latest AMI release version for the respective minor Kubernetes version
of the cluster, unless you deploy a custom AMI using a launch template.
For more information about using launch templates, see [Launch template
support](https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html).

An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group and
associated Amazon EC2 instances that are managed by Amazon Web Services
for an Amazon EKS cluster. For more information, see [Managed node
groups](https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html)
in the *Amazon EKS User Guide*.

Windows AMI types are only supported for commercial Regions that support
Windows Amazon EKS.

### Usage

    eks_create_nodegroup(clusterName, nodegroupName, scalingConfig,
      diskSize, subnets, instanceTypes, amiType, remoteAccess, nodeRole,
      labels, taints, tags, clientRequestToken, launchTemplate, updateConfig,
      capacityType, version, releaseVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_create_nodegroup_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the cluster to create the node group
in.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_nodegroup_:_nodegroupName">nodegroupName</code></td>
<td><p>[required] The unique name to give your node group.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_create_nodegroup_:_scalingConfig">scalingConfig</code></td>
<td><p>The scaling configuration details for the Auto Scaling group that
is created for your node group.</p></td>
</tr>
<tr class="even">
<td><code id="eks_create_nodegroup_:_diskSize">diskSize</code></td>
<td><p>The root device disk size (in GiB) for your node group instances.
The default disk size is 20 GiB for Linux and Bottlerocket. The default
disk size is 50 GiB for Windows. If you specify
<code>launchTemplate</code>, then don't specify <code>diskSize</code>,
or the node group deployment will fail. For more information about using
launch templates with Amazon EKS, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch
template support</a> in the <em>Amazon EKS User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_create_nodegroup_:_subnets">subnets</code></td>
<td><p>[required] The subnets to use for the Auto Scaling group that is
created for your node group. If you specify <code>launchTemplate</code>,
then don't specify <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html"><code>SubnetId</code></a>
in your launch template, or the node group deployment will fail. For
more information about using launch templates with Amazon EKS, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch
template support</a> in the <em>Amazon EKS User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_nodegroup_:_instanceTypes">instanceTypes</code></td>
<td><p>Specify the instance types for a node group. If you specify a GPU
instance type, make sure to also specify an applicable GPU AMI type with
the <code>amiType</code> parameter. If you specify
<code>launchTemplate</code>, then you can specify zero or one instance
type in your launch template <em>or</em> you can specify 0-20 instance
types for <code>instanceTypes</code>. If however, you specify an
instance type in your launch template <em>and</em> specify any
<code>instanceTypes</code>, the node group deployment will fail. If you
don't specify an instance type in a launch template or for
<code>instanceTypes</code>, then <code>t3.medium</code> is used, by
default. If you specify <code>Spot</code> for <code>capacityType</code>,
then we recommend specifying multiple values for
<code>instanceTypes</code>. For more information, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html#managed-node-group-capacity-types">Managed
node group capacity types</a> and <a
href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch
template support</a> in the <em>Amazon EKS User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_create_nodegroup_:_amiType">amiType</code></td>
<td><p>The AMI type for your node group. If you specify
<code>launchTemplate</code>, and your launch template uses a custom AMI,
then don't specify <code>amiType</code>, or the node group deployment
will fail. If your launch template uses a Windows custom AMI, then add
<code>eks:kube-proxy-windows</code> to your Windows nodes
<code>rolearn</code> in the <code>aws-auth</code>
<code>ConfigMap</code>. For more information about using launch
templates with Amazon EKS, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch
template support</a> in the <em>Amazon EKS User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_nodegroup_:_remoteAccess">remoteAccess</code></td>
<td><p>The remote access configuration to use with your node group. For
Linux, the protocol is SSH. For Windows, the protocol is RDP. If you
specify <code>launchTemplate</code>, then don't specify
<code>remoteAccess</code>, or the node group deployment will fail. For
more information about using launch templates with Amazon EKS, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch
template support</a> in the <em>Amazon EKS User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_create_nodegroup_:_nodeRole">nodeRole</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role to
associate with your node group. The Amazon EKS worker node
<code>kubelet</code> daemon makes calls to Amazon Web Services APIs on
your behalf. Nodes receive permissions for these API calls through an
IAM instance profile and associated policies. Before you can launch
nodes and register them into a cluster, you must create an IAM role for
those nodes to use when they are launched. For more information, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon
EKS node IAM role</a> in the <em>Amazon EKS User Guide</em> . If you
specify <code>launchTemplate</code>, then don't specify <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html"><code>IamInstanceProfile</code></a>
in your launch template, or the node group deployment will fail. For
more information about using launch templates with Amazon EKS, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch
template support</a> in the <em>Amazon EKS User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="eks_create_nodegroup_:_labels">labels</code></td>
<td><p>The Kubernetes labels to be applied to the nodes in the node
group when they are created.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_create_nodegroup_:_taints">taints</code></td>
<td><p>The Kubernetes taints to be applied to the nodes in the node
group. For more information, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node
taints on managed node groups</a>.</p></td>
</tr>
<tr class="even">
<td><code id="eks_create_nodegroup_:_tags">tags</code></td>
<td><p>The metadata to apply to the node group to assist with
categorization and organization. Each tag consists of a key and an
optional value. You define both. Node group tags do not propagate to any
other resources associated with the node group, such as the Amazon EC2
instances or subnets.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_create_nodegroup_:_clientRequestToken">clientRequestToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_nodegroup_:_launchTemplate">launchTemplate</code></td>
<td><p>An object representing a node group's launch template
specification. If specified, then do not specify
<code>instanceTypes</code>, <code>diskSize</code>, or
<code>remoteAccess</code> and make sure that the launch template meets
the requirements in <code>launchTemplateSpecification</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_create_nodegroup_:_updateConfig">updateConfig</code></td>
<td><p>The node group update configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_nodegroup_:_capacityType">capacityType</code></td>
<td><p>The capacity type for your node group.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_create_nodegroup_:_version">version</code></td>
<td><p>The Kubernetes version to use for your managed nodes. By default,
the Kubernetes version of the cluster is used, and this is the only
accepted specified value. If you specify <code>launchTemplate</code>,
and your launch template uses a custom AMI, then don't specify
<code>version</code>, or the node group deployment will fail. For more
information about using launch templates with Amazon EKS, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch
template support</a> in the <em>Amazon EKS User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_nodegroup_:_releaseVersion">releaseVersion</code></td>
<td><p>The AMI version of the Amazon EKS optimized AMI to use with your
node group. By default, the latest available AMI version for the node
group's current Kubernetes version is used. For information about Linux
versions, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html">Amazon
EKS optimized Amazon Linux AMI versions</a> in the <em>Amazon EKS User
Guide</em>. Amazon EKS managed node groups support the November 2022 and
later releases of the Windows AMIs. For information about Windows
versions, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html">Amazon
EKS optimized Windows AMI versions</a> in the <em>Amazon EKS User
Guide</em>.</p>
<p>If you specify <code>launchTemplate</code>, and your launch template
uses a custom AMI, then don't specify <code>releaseVersion</code>, or
the node group deployment will fail. For more information about using
launch templates with Amazon EKS, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch
template support</a> in the <em>Amazon EKS User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nodegroup = list(
        nodegroupName = "string",
        nodegroupArn = "string",
        clusterName = "string",
        version = "string",
        releaseVersion = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        modifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        status = "CREATING"|"ACTIVE"|"UPDATING"|"DELETING"|"CREATE_FAILED"|"DELETE_FAILED"|"DEGRADED",
        capacityType = "ON_DEMAND"|"SPOT",
        scalingConfig = list(
          minSize = 123,
          maxSize = 123,
          desiredSize = 123
        ),
        instanceTypes = list(
          "string"
        ),
        subnets = list(
          "string"
        ),
        remoteAccess = list(
          ec2SshKey = "string",
          sourceSecurityGroups = list(
            "string"
          )
        ),
        amiType = "AL2_x86_64"|"AL2_x86_64_GPU"|"AL2_ARM_64"|"CUSTOM"|"BOTTLEROCKET_ARM_64"|"BOTTLEROCKET_x86_64"|"BOTTLEROCKET_ARM_64_NVIDIA"|"BOTTLEROCKET_x86_64_NVIDIA"|"WINDOWS_CORE_2019_x86_64"|"WINDOWS_FULL_2019_x86_64"|"WINDOWS_CORE_2022_x86_64"|"WINDOWS_FULL_2022_x86_64",
        nodeRole = "string",
        labels = list(
          "string"
        ),
        taints = list(
          list(
            key = "string",
            value = "string",
            effect = "NO_SCHEDULE"|"NO_EXECUTE"|"PREFER_NO_SCHEDULE"
          )
        ),
        resources = list(
          autoScalingGroups = list(
            list(
              name = "string"
            )
          ),
          remoteAccessSecurityGroup = "string"
        ),
        diskSize = 123,
        health = list(
          issues = list(
            list(
              code = "AutoScalingGroupNotFound"|"AutoScalingGroupInvalidConfiguration"|"Ec2SecurityGroupNotFound"|"Ec2SecurityGroupDeletionFailure"|"Ec2LaunchTemplateNotFound"|"Ec2LaunchTemplateVersionMismatch"|"Ec2SubnetNotFound"|"Ec2SubnetInvalidConfiguration"|"IamInstanceProfileNotFound"|"IamLimitExceeded"|"IamNodeRoleNotFound"|"NodeCreationFailure"|"AsgInstanceLaunchFailures"|"InstanceLimitExceeded"|"InsufficientFreeAddresses"|"AccessDenied"|"InternalFailure"|"ClusterUnreachable"|"Ec2SubnetMissingIpv6Assignment",
              message = "string",
              resourceIds = list(
                "string"
              )
            )
          )
        ),
        updateConfig = list(
          maxUnavailable = 123,
          maxUnavailablePercentage = 123
        ),
        launchTemplate = list(
          name = "string",
          version = "string",
          id = "string"
        ),
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$create_nodegroup(
      clusterName = "string",
      nodegroupName = "string",
      scalingConfig = list(
        minSize = 123,
        maxSize = 123,
        desiredSize = 123
      ),
      diskSize = 123,
      subnets = list(
        "string"
      ),
      instanceTypes = list(
        "string"
      ),
      amiType = "AL2_x86_64"|"AL2_x86_64_GPU"|"AL2_ARM_64"|"CUSTOM"|"BOTTLEROCKET_ARM_64"|"BOTTLEROCKET_x86_64"|"BOTTLEROCKET_ARM_64_NVIDIA"|"BOTTLEROCKET_x86_64_NVIDIA"|"WINDOWS_CORE_2019_x86_64"|"WINDOWS_FULL_2019_x86_64"|"WINDOWS_CORE_2022_x86_64"|"WINDOWS_FULL_2022_x86_64",
      remoteAccess = list(
        ec2SshKey = "string",
        sourceSecurityGroups = list(
          "string"
        )
      ),
      nodeRole = "string",
      labels = list(
        "string"
      ),
      taints = list(
        list(
          key = "string",
          value = "string",
          effect = "NO_SCHEDULE"|"NO_EXECUTE"|"PREFER_NO_SCHEDULE"
        )
      ),
      tags = list(
        "string"
      ),
      clientRequestToken = "string",
      launchTemplate = list(
        name = "string",
        version = "string",
        id = "string"
      ),
      updateConfig = list(
        maxUnavailable = 123,
        maxUnavailablePercentage = 123
      ),
      capacityType = "ON_DEMAND"|"SPOT",
      version = "string",
      releaseVersion = "string"
    )
