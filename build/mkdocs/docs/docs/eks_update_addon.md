<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_update_addon</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Amazon EKS add-on

### Description

Updates an Amazon EKS add-on.

### Usage

    eks_update_addon(clusterName, addonName, addonVersion,
      serviceAccountRoleArn, resolveConflicts, clientRequestToken,
      configurationValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_update_addon_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the cluster.</p></td>
</tr>
<tr class="even">
<td><code id="eks_update_addon_:_addonName">addonName</code></td>
<td><p>[required] The name of the add-on. The name must match one of the
names returned by <a
href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html"><code>list_addons</code></a>
.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_update_addon_:_addonVersion">addonVersion</code></td>
<td><p>The version of the add-on. The version must match one of the
versions returned by <a
href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html"><code>describe_addon_versions</code></a>
.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_update_addon_:_serviceAccountRoleArn">serviceAccountRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an existing IAM role to bind to
the add-on's service account. The role must be assigned the IAM
permissions required by the add-on. If you don't specify an existing IAM
role, then the add-on uses the permissions assigned to the node IAM
role. For more information, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/create-node-role.html">Amazon
EKS node IAM role</a> in the <em>Amazon EKS User Guide</em>.</p>
<p>To specify an existing IAM role, you must have an IAM OpenID Connect
(OIDC) provider created for your cluster. For more information, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html">Enabling
IAM roles for service accounts on your cluster</a> in the <em>Amazon EKS
User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_update_addon_:_resolveConflicts">resolveConflicts</code></td>
<td><p>How to resolve field value conflicts for an Amazon EKS add-on if
you've changed a value from the Amazon EKS default value. Conflicts are
handled based on the option you choose:</p>
<ul>
<li><p><strong>None</strong> – Amazon EKS doesn't change the value. The
update might fail.</p></li>
<li><p><strong>Overwrite</strong> – Amazon EKS overwrites the changed
value back to the Amazon EKS default value.</p></li>
<li><p><strong>Preserve</strong> – Amazon EKS preserves the value. If
you choose this option, we recommend that you test any field and value
changes on a non-production cluster before updating the add-on on your
production cluster.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="eks_update_addon_:_clientRequestToken">clientRequestToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_update_addon_:_configurationValues">configurationValues</code></td>
<td><p>The set of configuration values for the add-on that's created.
The values that you provide are validated against the schema in
<code>describe_addon_configuration</code>.</p></td>
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

    svc$update_addon(
      clusterName = "string",
      addonName = "string",
      addonVersion = "string",
      serviceAccountRoleArn = "string",
      resolveConflicts = "OVERWRITE"|"NONE"|"PRESERVE",
      clientRequestToken = "string",
      configurationValues = "string"
    )
