<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_delete_addon</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an Amazon EKS add-on

### Description

Delete an Amazon EKS add-on.

When you remove the add-on, it will also be deleted from the cluster.
You can always manually start an add-on on the cluster using the
Kubernetes API.

### Usage

    eks_delete_addon(clusterName, addonName, preserve)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_delete_addon_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the cluster to delete the add-on
from.</p></td>
</tr>
<tr class="even">
<td><code id="eks_delete_addon_:_addonName">addonName</code></td>
<td><p>[required] The name of the add-on. The name must match one of the
names returned by <a
href="https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html"><code>list_addons</code></a>
.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_delete_addon_:_preserve">preserve</code></td>
<td><p>Specifying this option preserves the add-on software on your
cluster but Amazon EKS stops managing any settings for the add-on. If an
IAM account is associated with the add-on, it isn't removed.</p></td>
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

    svc$delete_addon(
      clusterName = "string",
      addonName = "string",
      preserve = TRUE|FALSE
    )
