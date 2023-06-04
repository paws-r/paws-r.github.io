<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_describe_update</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns descriptive information about an update against your Amazon EKS cluster or associated managed node group or Amazon EKS add-on

### Description

Returns descriptive information about an update against your Amazon EKS
cluster or associated managed node group or Amazon EKS add-on.

When the status of the update is `Succeeded`, the update is complete. If
an update fails, the status is `Failed`, and an error detail explains
the reason for the failure.

### Usage

    eks_describe_update(name, updateId, nodegroupName, addonName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_describe_update_:_name">name</code></td>
<td><p>[required] The name of the Amazon EKS cluster associated with the
update.</p></td>
</tr>
<tr class="even">
<td><code id="eks_describe_update_:_updateId">updateId</code></td>
<td><p>[required] The ID of the update to describe.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_describe_update_:_nodegroupName">nodegroupName</code></td>
<td><p>The name of the Amazon EKS node group associated with the update.
This parameter is required if the update is a node group
update.</p></td>
</tr>
<tr class="even">
<td><code id="eks_describe_update_:_addonName">addonName</code></td>
<td><p>The name of the add-on. The name must match one of the names
returned by <a
href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html"><code>list_addons</code></a>
. This parameter is required if the update is an add-on update.</p></td>
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

    svc$describe_update(
      name = "string",
      updateId = "string",
      nodegroupName = "string",
      addonName = "string"
    )
