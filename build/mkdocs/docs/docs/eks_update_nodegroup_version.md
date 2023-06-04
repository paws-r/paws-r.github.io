<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_update_nodegroup_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the Kubernetes version or AMI version of an Amazon EKS managed node group

### Description

Updates the Kubernetes version or AMI version of an Amazon EKS managed
node group.

You can update a node group using a launch template only if the node
group was originally deployed with a launch template. If you need to
update a custom AMI in a node group that was deployed with a launch
template, then update your custom AMI, specify the new ID in a new
version of the launch template, and then update the node group to the
new version of the launch template.

If you update without a launch template, then you can update to the
latest available AMI version of a node group's current Kubernetes
version by not specifying a Kubernetes version in the request. You can
update to the latest AMI version of your cluster's current Kubernetes
version by specifying your cluster's Kubernetes version in the request.
For information about Linux versions, see [Amazon EKS optimized Amazon
Linux AMI
versions](https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
in the *Amazon EKS User Guide*. For information about Windows versions,
see [Amazon EKS optimized Windows AMI
versions](https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html)
in the *Amazon EKS User Guide*.

You cannot roll back a node group to an earlier Kubernetes version or
AMI version.

When a node in a managed node group is terminated due to a scaling
action or update, the pods in that node are drained first. Amazon EKS
attempts to drain the nodes gracefully and will fail if it is unable to
do so. You can `force` the update if Amazon EKS is unable to drain the
nodes as a result of a pod disruption budget issue.

### Usage

    eks_update_nodegroup_version(clusterName, nodegroupName, version,
      releaseVersion, launchTemplate, force, clientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_update_nodegroup_version_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the Amazon EKS cluster that is associated
with the managed node group to update.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_update_nodegroup_version_:_nodegroupName">nodegroupName</code></td>
<td><p>[required] The name of the managed node group to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_update_nodegroup_version_:_version">version</code></td>
<td><p>The Kubernetes version to update to. If no version is specified,
then the Kubernetes version of the node group does not change. You can
specify the Kubernetes version of the cluster to update the node group
to the latest AMI version of the cluster's Kubernetes version. If you
specify <code>launchTemplate</code>, and your launch template uses a
custom AMI, then don't specify <code>version</code>, or the node group
update will fail. For more information about using launch templates with
Amazon EKS, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch
template support</a> in the <em>Amazon EKS User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_update_nodegroup_version_:_releaseVersion">releaseVersion</code></td>
<td><p>The AMI version of the Amazon EKS optimized AMI to use for the
update. By default, the latest available AMI version for the node
group's Kubernetes version is used. For information about Linux
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
the node group update will fail. For more information about using launch
templates with Amazon EKS, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html">Launch
template support</a> in the <em>Amazon EKS User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_update_nodegroup_version_:_launchTemplate">launchTemplate</code></td>
<td><p>An object representing a node group's launch template
specification. You can only update a node group using a launch template
if the node group was originally deployed with a launch
template.</p></td>
</tr>
<tr class="even">
<td><code id="eks_update_nodegroup_version_:_force">force</code></td>
<td><p>Force the update if the existing node group's pods are unable to
be drained due to a pod disruption budget issue. If an update fails
because pods could not be drained, you can force the update after it
fails to terminate the old node whether or not any pods are running on
the node.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_update_nodegroup_version_:_clientRequestToken">clientRequestToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      update = list(
        id = "string",
        status = "InProgress"|"Failed"|"Cancelled"|"Successful",
        type = "VersionUpdate"|"EndpointAccessUpdate"|"LoggingUpdate"|"ConfigUpdate"|"AssociateIdentityProviderConfig"|"DisassociateIdentityProviderConfig"|"AssociateEncryptionConfig"|"AddonUpdate",
        params = list(
          list(
            type = "Version"|"PlatformVersion"|"EndpointPrivateAccess"|"EndpointPublicAccess"|"ClusterLogging"|"DesiredSize"|"LabelsToAdd"|"LabelsToRemove"|"TaintsToAdd"|"TaintsToRemove"|"MaxSize"|"MinSize"|"ReleaseVersion"|"PublicAccessCidrs"|"LaunchTemplateName"|"LaunchTemplateVersion"|"IdentityProviderConfig"|"EncryptionConfig"|"AddonVersion"|"ServiceAccountRoleArn"|"ResolveConflicts"|"MaxUnavailable"|"MaxUnavailablePercentage",
            value = "string"
          )
        ),
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        errors = list(
          list(
            errorCode = "SubnetNotFound"|"SecurityGroupNotFound"|"EniLimitReached"|"IpNotAvailable"|"AccessDenied"|"OperationNotPermitted"|"VpcIdNotFound"|"Unknown"|"NodeCreationFailure"|"PodEvictionFailure"|"InsufficientFreeAddresses"|"ClusterUnreachable"|"InsufficientNumberOfReplicas"|"ConfigurationConflict"|"AdmissionRequestDenied"|"UnsupportedAddonModification"|"K8sResourceNotFound",
            errorMessage = "string",
            resourceIds = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$update_nodegroup_version(
      clusterName = "string",
      nodegroupName = "string",
      version = "string",
      releaseVersion = "string",
      launchTemplate = list(
        name = "string",
        version = "string",
        id = "string"
      ),
      force = TRUE|FALSE,
      clientRequestToken = "string"
    )
