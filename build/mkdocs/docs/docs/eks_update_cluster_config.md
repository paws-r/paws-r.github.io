<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_update_cluster_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Amazon EKS cluster configuration

### Description

Updates an Amazon EKS cluster configuration. Your cluster continues to
function during the update. The response output includes an update ID
that you can use to track the status of your cluster update with the
`describe_update` API operation.

You can use this API operation to enable or disable exporting the
Kubernetes control plane logs for your cluster to CloudWatch Logs. By
default, cluster control plane logs aren't exported to CloudWatch Logs.
For more information, see [Amazon EKS Cluster Control Plane
Logs](https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
in the *Amazon EKS User Guide* .

CloudWatch Logs ingestion, archive storage, and data scanning rates
apply to exported control plane logs. For more information, see
[CloudWatch Pricing](https://aws.amazon.com/cloudwatch/pricing/).

You can also use this API operation to enable or disable public and
private access to your cluster's Kubernetes API server endpoint. By
default, public access is enabled, and private access is disabled. For
more information, see [Amazon EKS cluster endpoint access
control](https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
in the *Amazon EKS User Guide* .

You can't update the subnets or security group IDs for an existing
cluster.

Cluster updates are asynchronous, and they should finish within a few
minutes. During an update, the cluster status moves to `UPDATING` (this
status transition is eventually consistent). When the update is complete
(either `Failed` or `Successful`), the cluster status moves to `Active`.

### Usage

    eks_update_cluster_config(name, resourcesVpcConfig, logging,
      clientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_update_cluster_config_:_name">name</code></td>
<td><p>[required] The name of the Amazon EKS cluster to update.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_update_cluster_config_:_resourcesVpcConfig">resourcesVpcConfig</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="eks_update_cluster_config_:_logging">logging</code></td>
<td><p>Enable or disable exporting the Kubernetes control plane logs for
your cluster to CloudWatch Logs. By default, cluster control plane logs
aren't exported to CloudWatch Logs. For more information, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html">Amazon
EKS cluster control plane logs</a> in the <em>Amazon EKS User Guide</em>
.</p>
<p>CloudWatch Logs ingestion, archive storage, and data scanning rates
apply to exported control plane logs. For more information, see <a
href="https://aws.amazon.com/cloudwatch/pricing/">CloudWatch
Pricing</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_update_cluster_config_:_clientRequestToken">clientRequestToken</code></td>
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

    svc$update_cluster_config(
      name = "string",
      resourcesVpcConfig = list(
        subnetIds = list(
          "string"
        ),
        securityGroupIds = list(
          "string"
        ),
        endpointPublicAccess = TRUE|FALSE,
        endpointPrivateAccess = TRUE|FALSE,
        publicAccessCidrs = list(
          "string"
        )
      ),
      logging = list(
        clusterLogging = list(
          list(
            types = list(
              "api"|"audit"|"authenticator"|"controllerManager"|"scheduler"
            ),
            enabled = TRUE|FALSE
          )
        )
      ),
      clientRequestToken = "string"
    )
