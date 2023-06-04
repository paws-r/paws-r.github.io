<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_disassociate_identity_provider_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an identity provider configuration from a cluster

### Description

Disassociates an identity provider configuration from a cluster. If you
disassociate an identity provider from your cluster, users included in
the provider can no longer access the cluster. However, you can still
access the cluster with Amazon Web Services IAM users.

### Usage

    eks_disassociate_identity_provider_config(clusterName,
      identityProviderConfig, clientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_disassociate_identity_provider_config_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the cluster to disassociate an identity
provider from.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_disassociate_identity_provider_config_:_identityProviderConfig">identityProviderConfig</code></td>
<td><p>[required] An object representing an identity provider
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_disassociate_identity_provider_config_:_clientRequestToken">clientRequestToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request.</p></td>
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

    svc$disassociate_identity_provider_config(
      clusterName = "string",
      identityProviderConfig = list(
        type = "string",
        name = "string"
      ),
      clientRequestToken = "string"
    )
