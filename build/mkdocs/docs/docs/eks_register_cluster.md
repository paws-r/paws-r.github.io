<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_register_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Connects a Kubernetes cluster to the Amazon EKS control plane

### Description

Connects a Kubernetes cluster to the Amazon EKS control plane.

Any Kubernetes cluster can be connected to the Amazon EKS control plane
to view current information about the cluster and its nodes.

Cluster connection requires two steps. First, send a
`RegisterClusterRequest` to add it to the Amazon EKS control plane.

Second, a
[Manifest](https://amazon-eks.s3.us-west-2.amazonaws.com/eks-connector/manifests/eks-connector/latest/eks-connector.yaml)
containing the `activationID` and `activationCode` must be applied to
the Kubernetes cluster through it's native provider to provide
visibility.

After the Manifest is updated and applied, then the connected cluster is
visible to the Amazon EKS control plane. If the Manifest is not applied
within three days, then the connected cluster will no longer be visible
and must be deregistered. See `deregister_cluster`.

### Usage

    eks_register_cluster(name, connectorConfig, clientRequestToken, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_register_cluster_:_name">name</code></td>
<td><p>[required] Define a unique name for this cluster for your
Region.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_register_cluster_:_connectorConfig">connectorConfig</code></td>
<td><p>[required] The configuration settings required to connect the
Kubernetes cluster to the Amazon EKS control plane.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_register_cluster_:_clientRequestToken">clientRequestToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code id="eks_register_cluster_:_tags">tags</code></td>
<td><p>The metadata that you apply to the cluster to assist with
categorization and organization. Each tag consists of a key and an
optional value, both of which you define. Cluster tags do not propagate
to any other resources associated with the cluster.</p></td>
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

    svc$register_cluster(
      name = "string",
      connectorConfig = list(
        roleArn = "string",
        provider = "EKS_ANYWHERE"|"ANTHOS"|"GKE"|"AKS"|"OPENSHIFT"|"TANZU"|"RANCHER"|"EC2"|"OTHER"
      ),
      clientRequestToken = "string",
      tags = list(
        "string"
      )
    )
