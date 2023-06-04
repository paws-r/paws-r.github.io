<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_delete_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the Amazon EKS cluster control plane

### Description

Deletes the Amazon EKS cluster control plane.

If you have active services in your cluster that are associated with a
load balancer, you must delete those services before deleting the
cluster so that the load balancers are deleted properly. Otherwise, you
can have orphaned resources in your VPC that prevent you from being able
to delete the VPC. For more information, see [Deleting a
Cluster](https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html)
in the *Amazon EKS User Guide*.

If you have managed node groups or Fargate profiles attached to the
cluster, you must delete them first. For more information, see
`delete_nodegroup` and `delete_fargate_profile`.

### Usage

    eks_delete_cluster(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_delete_cluster_:_name">name</code></td>
<td><p>[required] The name of the cluster to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      cluster = list(
        name = "string",
        arn = "string",
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        version = "string",
        endpoint = "string",
        roleArn = "string",
        resourcesVpcConfig = list(
          subnetIds = list(
            "string"
          ),
          securityGroupIds = list(
            "string"
          ),
          clusterSecurityGroupId = "string",
          vpcId = "string",
          endpointPublicAccess = TRUE|FALSE,
          endpointPrivateAccess = TRUE|FALSE,
          publicAccessCidrs = list(
            "string"
          )
        ),
        kubernetesNetworkConfig = list(
          serviceIpv4Cidr = "string",
          serviceIpv6Cidr = "string",
          ipFamily = "ipv4"|"ipv6"
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
        identity = list(
          oidc = list(
            issuer = "string"
          )
        ),
        status = "CREATING"|"ACTIVE"|"DELETING"|"FAILED"|"UPDATING"|"PENDING",
        certificateAuthority = list(
          data = "string"
        ),
        clientRequestToken = "string",
        platformVersion = "string",
        tags = list(
          "string"
        ),
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
        connectorConfig = list(
          activationId = "string",
          activationCode = "string",
          activationExpiry = as.POSIXct(
            "2015-01-01"
          ),
          provider = "string",
          roleArn = "string"
        ),
        id = "string",
        health = list(
          issues = list(
            list(
              code = "AccessDenied"|"ClusterUnreachable"|"ConfigurationConflict"|"InternalFailure"|"ResourceLimitExceeded"|"ResourceNotFound",
              message = "string",
              resourceIds = list(
                "string"
              )
            )
          )
        ),
        outpostConfig = list(
          outpostArns = list(
            "string"
          ),
          controlPlaneInstanceType = "string",
          controlPlanePlacement = list(
            groupName = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_cluster(
      name = "string"
    )

### Examples

    ## Not run: 
    # This example command deletes a cluster named `devel` in your default
    # region.
    svc$delete_cluster(
      name = "devel"
    )

    ## End(Not run)
