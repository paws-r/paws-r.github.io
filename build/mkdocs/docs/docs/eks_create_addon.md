<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_create_addon</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon EKS add-on

### Description

Creates an Amazon EKS add-on.

Amazon EKS add-ons help to automate the provisioning and lifecycle
management of common operational software for Amazon EKS clusters. For
more information, see [Amazon EKS
add-ons](https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html)
in the *Amazon EKS User Guide*.

### Usage

    eks_create_addon(clusterName, addonName, addonVersion,
      serviceAccountRoleArn, resolveConflicts, clientRequestToken, tags,
      configurationValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_create_addon_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the cluster to create the add-on
for.</p></td>
</tr>
<tr class="even">
<td><code id="eks_create_addon_:_addonName">addonName</code></td>
<td><p>[required] The name of the add-on. The name must match one of the
names that <a
href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html"><code>describe_addon_versions</code></a>
returns.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_create_addon_:_addonVersion">addonVersion</code></td>
<td><p>The version of the add-on. The version must match one of the
versions returned by <a
href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html"><code>describe_addon_versions</code></a>
.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_addon_:_serviceAccountRoleArn">serviceAccountRoleArn</code></td>
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
id="eks_create_addon_:_resolveConflicts">resolveConflicts</code></td>
<td><p>How to resolve field value conflicts for an Amazon EKS add-on.
Conflicts are handled based on the value you choose:</p>
<ul>
<li><p><strong>None</strong> – If the self-managed version of the add-on
is installed on your cluster, Amazon EKS doesn't change the value.
Creation of the add-on might fail.</p></li>
<li><p><strong>Overwrite</strong> – If the self-managed version of the
add-on is installed on your cluster and the Amazon EKS default value is
different than the existing value, Amazon EKS changes the value to the
Amazon EKS default value.</p></li>
<li><p><strong>Preserve</strong> – Not supported. You can set this value
when updating an add-on though. For more information, see
<code>update_addon</code>.</p></li>
</ul>
<p>If you don't currently have the self-managed version of the add-on
installed on your cluster, the Amazon EKS add-on is installed. Amazon
EKS sets all values to default values, regardless of the option that you
specify.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_addon_:_clientRequestToken">clientRequestToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_create_addon_:_tags">tags</code></td>
<td><p>The metadata to apply to the cluster to assist with
categorization and organization. Each tag consists of a key and an
optional value. You define both.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_addon_:_configurationValues">configurationValues</code></td>
<td><p>The set of configuration values for the add-on that's created.
The values that you provide are validated against the schema in <a
href="https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonConfiguration.html"><code>describe_addon_configuration</code></a>
.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      addon = list(
        addonName = "string",
        clusterName = "string",
        status = "CREATING"|"ACTIVE"|"CREATE_FAILED"|"UPDATING"|"DELETING"|"DELETE_FAILED"|"DEGRADED"|"UPDATE_FAILED",
        addonVersion = "string",
        health = list(
          issues = list(
            list(
              code = "AccessDenied"|"InternalFailure"|"ClusterUnreachable"|"InsufficientNumberOfReplicas"|"ConfigurationConflict"|"AdmissionRequestDenied"|"UnsupportedAddonModification"|"K8sResourceNotFound",
              message = "string",
              resourceIds = list(
                "string"
              )
            )
          )
        ),
        addonArn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        modifiedAt = as.POSIXct(
          "2015-01-01"
        ),
        serviceAccountRoleArn = "string",
        tags = list(
          "string"
        ),
        publisher = "string",
        owner = "string",
        marketplaceInformation = list(
          productId = "string",
          productUrl = "string"
        ),
        configurationValues = "string"
      )
    )

### Request syntax

    svc$create_addon(
      clusterName = "string",
      addonName = "string",
      addonVersion = "string",
      serviceAccountRoleArn = "string",
      resolveConflicts = "OVERWRITE"|"NONE"|"PRESERVE",
      clientRequestToken = "string",
      tags = list(
        "string"
      ),
      configurationValues = "string"
    )
