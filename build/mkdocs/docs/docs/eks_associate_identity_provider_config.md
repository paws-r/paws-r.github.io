<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_associate_identity_provider_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associate an identity provider configuration to a cluster

### Description

Associate an identity provider configuration to a cluster.

If you want to authenticate identities using an identity provider, you
can create an identity provider configuration and associate it to your
cluster. After configuring authentication to your cluster you can create
Kubernetes `roles` and `clusterroles` to assign permissions to the
roles, and then bind the roles to the identities using Kubernetes
`rolebindings` and `clusterrolebindings`. For more information see
[Using RBAC
Authorization](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)
in the Kubernetes documentation.

### Usage

    eks_associate_identity_provider_config(clusterName, oidc, tags,
      clientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_associate_identity_provider_config_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the cluster to associate the configuration
to.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_associate_identity_provider_config_:_oidc">oidc</code></td>
<td><p>[required] An object representing an OpenID Connect (OIDC)
identity provider configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_associate_identity_provider_config_:_tags">tags</code></td>
<td><p>The metadata to apply to the configuration to assist with
categorization and organization. Each tag consists of a key and an
optional value. You define both.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_associate_identity_provider_config_:_clientRequestToken">clientRequestToken</code></td>
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
      ),
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$associate_identity_provider_config(
      clusterName = "string",
      oidc = list(
        identityProviderConfigName = "string",
        issuerUrl = "string",
        clientId = "string",
        usernameClaim = "string",
        usernamePrefix = "string",
        groupsClaim = "string",
        groupsPrefix = "string",
        requiredClaims = list(
          "string"
        )
      ),
      tags = list(
        "string"
      ),
      clientRequestToken = "string"
    )
