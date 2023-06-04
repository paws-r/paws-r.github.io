<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_update_nodegroup_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Amazon EKS managed node group configuration

### Description

Updates an Amazon EKS managed node group configuration. Your node group
continues to function during the update. The response output includes an
update ID that you can use to track the status of your node group update
with the `describe_update` API operation. Currently you can update the
Kubernetes labels for a node group or the scaling configuration.

### Usage

    eks_update_nodegroup_config(clusterName, nodegroupName, labels, taints,
      scalingConfig, updateConfig, clientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_update_nodegroup_config_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the Amazon EKS cluster that the managed
node group resides in.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_update_nodegroup_config_:_nodegroupName">nodegroupName</code></td>
<td><p>[required] The name of the managed node group to update.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_update_nodegroup_config_:_labels">labels</code></td>
<td><p>The Kubernetes labels to be applied to the nodes in the node
group after the update.</p></td>
</tr>
<tr class="even">
<td><code id="eks_update_nodegroup_config_:_taints">taints</code></td>
<td><p>The Kubernetes taints to be applied to the nodes in the node
group after the update. For more information, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html">Node
taints on managed node groups</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_update_nodegroup_config_:_scalingConfig">scalingConfig</code></td>
<td><p>The scaling configuration details for the Auto Scaling group
after the update.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_update_nodegroup_config_:_updateConfig">updateConfig</code></td>
<td><p>The node group update configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_update_nodegroup_config_:_clientRequestToken">clientRequestToken</code></td>
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

    svc$update_nodegroup_config(
      clusterName = "string",
      nodegroupName = "string",
      labels = list(
        addOrUpdateLabels = list(
          "string"
        ),
        removeLabels = list(
          "string"
        )
      ),
      taints = list(
        addOrUpdateTaints = list(
          list(
            key = "string",
            value = "string",
            effect = "NO_SCHEDULE"|"NO_EXECUTE"|"PREFER_NO_SCHEDULE"
          )
        ),
        removeTaints = list(
          list(
            key = "string",
            value = "string",
            effect = "NO_SCHEDULE"|"NO_EXECUTE"|"PREFER_NO_SCHEDULE"
          )
        )
      ),
      scalingConfig = list(
        minSize = 123,
        maxSize = 123,
        desiredSize = 123
      ),
      updateConfig = list(
        maxUnavailable = 123,
        maxUnavailablePercentage = 123
      ),
      clientRequestToken = "string"
    )
