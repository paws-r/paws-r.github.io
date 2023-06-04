<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_deregister_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters a connected cluster to remove it from the Amazon EKS control plane

### Description

Deregisters a connected cluster to remove it from the Amazon EKS control
plane.

### Usage

    eks_deregister_cluster(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_deregister_cluster_:_name">name</code></td>
<td><p>[required] The name of the connected cluster to
deregister.</p></td>
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

    svc$deregister_cluster(
      name = "string"
    )
