<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_update_cluster_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Amazon EKS cluster to the specified Kubernetes version

### Description

Updates an Amazon EKS cluster to the specified Kubernetes version. Your
cluster continues to function during the update. The response output
includes an update ID that you can use to track the status of your
cluster update with the `describe_update` API operation.

Cluster updates are asynchronous, and they should finish within a few
minutes. During an update, the cluster status moves to `UPDATING` (this
status transition is eventually consistent). When the update is complete
(either `Failed` or `Successful`), the cluster status moves to `Active`.

If your cluster has managed node groups attached to it, all of your node
groups’ Kubernetes versions must match the cluster’s Kubernetes version
in order to update the cluster to a new Kubernetes version.

### Usage

    eks_update_cluster_version(name, version, clientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_update_cluster_version_:_name">name</code></td>
<td><p>[required] The name of the Amazon EKS cluster to update.</p></td>
</tr>
<tr class="even">
<td><code id="eks_update_cluster_version_:_version">version</code></td>
<td><p>[required] The desired Kubernetes version following a successful
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_update_cluster_version_:_clientRequestToken">clientRequestToken</code></td>
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

    svc$update_cluster_version(
      name = "string",
      version = "string",
      clientRequestToken = "string"
    )
