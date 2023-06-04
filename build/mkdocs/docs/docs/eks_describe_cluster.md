<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_describe_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns descriptive information about an Amazon EKS cluster

### Description

Returns descriptive information about an Amazon EKS cluster.

The API server endpoint and certificate authority data returned by this
operation are required for `kubelet` and `kubectl` to communicate with
your Kubernetes API server. For more information, see [Create a
kubeconfig for Amazon
EKS](https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html).

The API server endpoint and certificate authority data aren't available
until the cluster reaches the `ACTIVE` state.

### Usage

    eks_describe_cluster(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_describe_cluster_:_name">name</code></td>
<td><p>[required] The name of the cluster to describe.</p></td>
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

    svc$describe_cluster(
      name = "string"
    )

### Examples

    ## Not run: 
    # This example command provides a description of the specified cluster in
    # your default region.
    svc$describe_cluster(
      name = "devel"
    )

    ## End(Not run)
