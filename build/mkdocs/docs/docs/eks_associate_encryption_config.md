<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_associate_encryption_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associate encryption configuration to an existing cluster

### Description

Associate encryption configuration to an existing cluster.

You can use this API to enable encryption on existing clusters which do
not have encryption already enabled. This allows you to implement a
defense-in-depth security strategy without migrating applications to new
Amazon EKS clusters.

### Usage

    eks_associate_encryption_config(clusterName, encryptionConfig,
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
id="eks_associate_encryption_config_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the cluster that you are associating with
encryption configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_associate_encryption_config_:_encryptionConfig">encryptionConfig</code></td>
<td><p>[required] The configuration you are using for
encryption.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_associate_encryption_config_:_clientRequestToken">clientRequestToken</code></td>
<td><p>The client request token you are using with the encryption
configuration.</p></td>
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

    svc$associate_encryption_config(
      clusterName = "string",
      encryptionConfig = list(
        list(
          resources = list(
            "string"
          ),
          provider = list(
            keyArn = "string"
          )
        )
      ),
      clientRequestToken = "string"
    )
