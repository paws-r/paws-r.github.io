<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_create_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon EKS control plane

### Description

Creates an Amazon EKS control plane.

The Amazon EKS control plane consists of control plane instances that
run the Kubernetes software, such as `etcd` and the API server. The
control plane runs in an account managed by Amazon Web Services, and the
Kubernetes API is exposed by the Amazon EKS API server endpoint. Each
Amazon EKS cluster control plane is single tenant and unique. It runs on
its own set of Amazon EC2 instances.

The cluster control plane is provisioned across multiple Availability
Zones and fronted by an Elastic Load Balancing Network Load Balancer.
Amazon EKS also provisions elastic network interfaces in your VPC
subnets to provide connectivity from the control plane instances to the
nodes (for example, to support `⁠kubectl exec⁠`, `logs`, and `proxy` data
flows).

Amazon EKS nodes run in your Amazon Web Services account and connect to
your cluster's control plane over the Kubernetes API server endpoint and
a certificate file that is created for your cluster.

In most cases, it takes several minutes to create a cluster. After you
create an Amazon EKS cluster, you must configure your Kubernetes tooling
to communicate with the API server and launch nodes into your cluster.
For more information, see [Managing Cluster
Authentication](https://docs.aws.amazon.com/eks/latest/userguide/) and
[Launching Amazon EKS
nodes](https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html)
in the *Amazon EKS User Guide*.

### Usage

    eks_create_cluster(name, version, roleArn, resourcesVpcConfig,
      kubernetesNetworkConfig, logging, clientRequestToken, tags,
      encryptionConfig, outpostConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_create_cluster_:_name">name</code></td>
<td><p>[required] The unique name to give to your cluster.</p></td>
</tr>
<tr class="even">
<td><code id="eks_create_cluster_:_version">version</code></td>
<td><p>The desired Kubernetes version for your cluster. If you don't
specify a value here, the default version available in Amazon EKS is
used.</p>
<p>The default version might not be the latest version
available.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_create_cluster_:_roleArn">roleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
provides permissions for the Kubernetes control plane to make calls to
Amazon Web Services API operations on your behalf. For more information,
see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html">Amazon
EKS Service IAM Role</a> in the <em>Amazon EKS User Guide</em>
.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_cluster_:_resourcesVpcConfig">resourcesVpcConfig</code></td>
<td><p>[required] The VPC configuration that's used by the cluster
control plane. Amazon EKS VPC resources have specific requirements to
work properly with Kubernetes. For more information, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html">Cluster
VPC Considerations</a> and <a
href="https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html">Cluster
Security Group Considerations</a> in the <em>Amazon EKS User Guide</em>.
You must specify at least two subnets. You can specify up to five
security groups. However, we recommend that you use a dedicated security
group for your cluster control plane.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_create_cluster_:_kubernetesNetworkConfig">kubernetesNetworkConfig</code></td>
<td><p>The Kubernetes network configuration for the cluster.</p></td>
</tr>
<tr class="even">
<td><code id="eks_create_cluster_:_logging">logging</code></td>
<td><p>Enable or disable exporting the Kubernetes control plane logs for
your cluster to CloudWatch Logs. By default, cluster control plane logs
aren't exported to CloudWatch Logs. For more information, see <a
href="https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html">Amazon
EKS Cluster control plane logs</a> in the <em>Amazon EKS User Guide</em>
.</p>
<p>CloudWatch Logs ingestion, archive storage, and data scanning rates
apply to exported control plane logs. For more information, see <a
href="https://aws.amazon.com/cloudwatch/pricing/">CloudWatch
Pricing</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_create_cluster_:_clientRequestToken">clientRequestToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code id="eks_create_cluster_:_tags">tags</code></td>
<td><p>The metadata to apply to the cluster to assist with
categorization and organization. Each tag consists of a key and an
optional value. You define both.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_create_cluster_:_encryptionConfig">encryptionConfig</code></td>
<td><p>The encryption configuration for the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_create_cluster_:_outpostConfig">outpostConfig</code></td>
<td><p>An object representing the configuration of your local Amazon EKS
cluster on an Amazon Web Services Outpost. Before creating a local
cluster on an Outpost, review <a
href="https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-local-cluster-overview.html">Local
clusters for Amazon EKS on Amazon Web Services Outposts</a> in the
<em>Amazon EKS User Guide</em>. This object isn't available for creating
Amazon EKS clusters on the Amazon Web Services cloud.</p></td>
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

    svc$create_cluster(
      name = "string",
      version = "string",
      roleArn = "string",
      resourcesVpcConfig = list(
        subnetIds = list(
          "string"
        ),
        securityGroupIds = list(
          "string"
        ),
        endpointPublicAccess = TRUE|FALSE,
        endpointPrivateAccess = TRUE|FALSE,
        publicAccessCidrs = list(
          "string"
        )
      ),
      kubernetesNetworkConfig = list(
        serviceIpv4Cidr = "string",
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
      clientRequestToken = "string",
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

### Examples

    ## Not run: 
    # The following example creates an Amazon EKS cluster called prod.
    svc$create_cluster(
      version = "1.10",
      name = "prod",
      clientRequestToken = "1d2129a1-3d38-460a-9756-e5b91fddb951",
      resourcesVpcConfig = list(
        securityGroupIds = list(
          "sg-6979fe18"
        ),
        subnetIds = list(
          "subnet-6782e71e",
          "subnet-e7e761ac"
        )
      ),
      roleArn = "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRole..."
    )

    ## End(Not run)
