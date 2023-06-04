<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_create_compute_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Batch compute environment

### Description

Creates an Batch compute environment. You can create `MANAGED` or
`UNMANAGED` compute environments. `MANAGED` compute environments can use
Amazon EC2 or Fargate resources. `UNMANAGED` compute environments can
only use EC2 resources.

In a managed compute environment, Batch manages the capacity and
instance types of the compute resources within the environment. This is
based on the compute resource specification that you define or the
[launch
template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html)
that you specify when you create the compute environment. Either, you
can choose to use EC2 On-Demand Instances and EC2 Spot Instances. Or,
you can use Fargate and Fargate Spot capacity in your managed compute
environment. You can optionally set a maximum price so that Spot
Instances only launch when the Spot Instance price is less than a
specified percentage of the On-Demand price.

Multi-node parallel jobs aren't supported on Spot Instances.

In an unmanaged compute environment, you can manage your own EC2 compute
resources and have flexibility with how you configure your compute
resources. For example, you can use custom AMIs. However, you must
verify that each of your AMIs meet the Amazon ECS container instance AMI
specification. For more information, see [container instance
AMIs](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/) in
the *Amazon Elastic Container Service Developer Guide*. After you
created your unmanaged compute environment, you can use the
`describe_compute_environments` operation to find the Amazon ECS cluster
that's associated with it. Then, launch your container instances into
that Amazon ECS cluster. For more information, see [Launching an Amazon
ECS container
instance](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html)
in the *Amazon Elastic Container Service Developer Guide*.

To create a compute environment that uses EKS resources, the caller must
have permissions to call `eks:DescribeCluster`.

Batch doesn't automatically upgrade the AMIs in a compute environment
after it's created. For example, it also doesn't update the AMIs in your
compute environment when a newer version of the Amazon ECS optimized AMI
is available. You're responsible for the management of the guest
operating system. This includes any updates and security patches. You're
also responsible for any additional application software or utilities
that you install on the compute resources. There are two ways to use a
new AMI for your Batch jobs. The original method is to complete these
steps:

1.  Create a new compute environment with the new AMI.

2.  Add the compute environment to an existing job queue.

3.  Remove the earlier compute environment from your job queue.

4.  Delete the earlier compute environment.

In April 2022, Batch added enhanced support for updating compute
environments. For more information, see [Updating compute
environments](https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html).
To use the enhanced updating of compute environments to update AMIs,
follow these rules:

-   Either don't set the service role (`serviceRole`) parameter or set
    it to the **AWSBatchServiceRole** service-linked role.

-   Set the allocation strategy (`allocationStrategy`) parameter to
    `BEST_FIT_PROGRESSIVE` or `SPOT_CAPACITY_OPTIMIZED`.

-   Set the update to latest image version
    (`updateToLatestImageVersion`) parameter to `true`.

-   Don't specify an AMI ID in `imageId`, `imageIdOverride` (in
    [`ec2Configuration`](https://docs.aws.amazon.com/batch/latest/APIReference/API_Ec2Configuration.html)
    ), or in the launch template (`launchTemplate`). In that case, Batch
    selects the latest Amazon ECS optimized AMI that's supported by
    Batch at the time the infrastructure update is initiated.
    Alternatively, you can specify the AMI ID in the `imageId` or
    `imageIdOverride` parameters, or the launch template identified by
    the `LaunchTemplate` properties. Changing any of these properties
    starts an infrastructure update. If the AMI ID is specified in the
    launch template, it can't be replaced by specifying an AMI ID in
    either the `imageId` or `imageIdOverride` parameters. It can only be
    replaced by specifying a different launch template, or if the launch
    template version is set to `⁠$Default⁠` or `⁠$Latest⁠`, by setting
    either a new default version for the launch template (if `⁠$Default⁠`)
    or by adding a new version to the launch template (if `⁠$Latest⁠`).

If these rules are followed, any update that starts an infrastructure
update causes the AMI ID to be re-selected. If the `version` setting in
the launch template (`launchTemplate`) is set to `⁠$Latest⁠` or
`⁠$Default⁠`, the latest or default version of the launch template is
evaluated up at the time of the infrastructure update, even if the
`launchTemplate` wasn't updated.

### Usage

    batch_create_compute_environment(computeEnvironmentName, type, state,
      unmanagedvCpus, computeResources, serviceRole, tags, eksConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_create_compute_environment_:_computeEnvironmentName">computeEnvironmentName</code></td>
<td><p>[required] The name for your compute environment. It can be up to
128 characters long. It can contain uppercase and lowercase letters,
numbers, hyphens (-), and underscores (_).</p></td>
</tr>
<tr class="even">
<td><code id="batch_create_compute_environment_:_type">type</code></td>
<td><p>[required] The type of the compute environment:
<code>MANAGED</code> or <code>UNMANAGED</code>. For more information,
see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute
Environments</a> in the <em>Batch User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_create_compute_environment_:_state">state</code></td>
<td><p>The state of the compute environment. If the state is
<code>ENABLED</code>, then the compute environment accepts jobs from a
queue and can scale out automatically based on queues.</p>
<p>If the state is <code>ENABLED</code>, then the Batch scheduler can
attempt to place jobs from an associated job queue on the compute
resources within the environment. If the compute environment is managed,
then it can scale its instances out or in automatically, based on the
job queue demand.</p>
<p>If the state is <code>DISABLED</code>, then the Batch scheduler
doesn't attempt to place jobs within the environment. Jobs in a
<code>STARTING</code> or <code>RUNNING</code> state continue to progress
normally. Managed compute environments in the <code>DISABLED</code>
state don't scale out.</p>
<p>Compute environments in a <code>DISABLED</code> state may continue to
incur billing charges. To prevent additional charges, turn off and then
delete the compute environment. For more information, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environment_parameters.html#compute_environment_state">State</a>
in the <em>Batch User Guide</em>.</p>
<p>When an instance is idle, the instance scales down to the
<code>minvCpus</code> value. However, the instance size doesn't change.
For example, consider a <code>c5.8xlarge</code> instance with a
<code>minvCpus</code> value of <code>4</code> and a
<code>desiredvCpus</code> value of <code>36</code>. This instance
doesn't scale down to a <code>c5.large</code> instance.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_create_compute_environment_:_unmanagedvCpus">unmanagedvCpus</code></td>
<td><p>The maximum number of vCPUs for an unmanaged compute environment.
This parameter is only used for fair share scheduling to reserve vCPU
capacity for new share identifiers. If this parameter isn't provided for
a fair share job queue, no vCPU capacity is reserved.</p>
<p>This parameter is only supported when the <code>type</code> parameter
is set to <code>UNMANAGED</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_create_compute_environment_:_computeResources">computeResources</code></td>
<td><p>Details about the compute resources managed by the compute
environment. This parameter is required for managed compute
environments. For more information, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute
Environments</a> in the <em>Batch User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_create_compute_environment_:_serviceRole">serviceRole</code></td>
<td><p>The full Amazon Resource Name (ARN) of the IAM role that allows
Batch to make calls to other Amazon Web Services services on your
behalf. For more information, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html">Batch
service IAM role</a> in the <em>Batch User Guide</em>.</p>
<p>If your account already created the Batch service-linked role, that
role is used by default for your compute environment unless you specify
a different role here. If the Batch service-linked role doesn't exist in
your account, and no role is specified here, the service attempts to
create the Batch service-linked role in your account.</p>
<p>If your specified role has a path other than <code>/</code>, then you
must specify either the full role ARN (recommended) or prefix the role
name with the path. For example, if a role with the name
<code>bar</code> has a path of <code
style="white-space: pre;">⁠/foo/⁠</code>, specify <code
style="white-space: pre;">⁠/foo/bar⁠</code> as the role name. For more
information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names">Friendly
names and paths</a> in the <em>IAM User Guide</em>.</p>
<p>Depending on how you created your Batch service role, its ARN might
contain the <code>service-role</code> path prefix. When you only specify
the name of the service role, Batch assumes that your ARN doesn't use
the <code>service-role</code> path prefix. Because of this, we recommend
that you specify the full ARN of your service role when you create
compute environments.</p></td>
</tr>
<tr class="odd">
<td><code id="batch_create_compute_environment_:_tags">tags</code></td>
<td><p>The tags that you apply to the compute environment to help you
categorize and organize your resources. Each tag consists of a key and
an optional value. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a> in <em>Amazon Web Services General
Reference</em>.</p>
<p>These tags can be updated or removed using the
<code>tag_resource</code> and <code>untag_resource</code> API
operations. These tags don't propagate to the underlying compute
resources.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_create_compute_environment_:_eksConfiguration">eksConfiguration</code></td>
<td><p>The details for the Amazon EKS cluster that supports the compute
environment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      computeEnvironmentName = "string",
      computeEnvironmentArn = "string"
    )

### Request syntax

    svc$create_compute_environment(
      computeEnvironmentName = "string",
      type = "MANAGED"|"UNMANAGED",
      state = "ENABLED"|"DISABLED",
      unmanagedvCpus = 123,
      computeResources = list(
        type = "EC2"|"SPOT"|"FARGATE"|"FARGATE_SPOT",
        allocationStrategy = "BEST_FIT"|"BEST_FIT_PROGRESSIVE"|"SPOT_CAPACITY_OPTIMIZED",
        minvCpus = 123,
        maxvCpus = 123,
        desiredvCpus = 123,
        instanceTypes = list(
          "string"
        ),
        imageId = "string",
        subnets = list(
          "string"
        ),
        securityGroupIds = list(
          "string"
        ),
        ec2KeyPair = "string",
        instanceRole = "string",
        tags = list(
          "string"
        ),
        placementGroup = "string",
        bidPercentage = 123,
        spotIamFleetRole = "string",
        launchTemplate = list(
          launchTemplateId = "string",
          launchTemplateName = "string",
          version = "string"
        ),
        ec2Configuration = list(
          list(
            imageType = "string",
            imageIdOverride = "string",
            imageKubernetesVersion = "string"
          )
        )
      ),
      serviceRole = "string",
      tags = list(
        "string"
      ),
      eksConfiguration = list(
        eksClusterArn = "string",
        kubernetesNamespace = "string"
      )
    )

### Examples

    ## Not run: 
    # This example creates a managed compute environment with specific C4
    # instance types that are launched on demand. The compute environment is
    # called C4OnDemand.
    svc$create_compute_environment(
      type = "MANAGED",
      computeEnvironmentName = "C4OnDemand",
      computeResources = list(
        type = "EC2",
        desiredvCpus = 48L,
        ec2KeyPair = "id_rsa",
        instanceRole = "ecsInstanceRole",
        instanceTypes = list(
          "c4.large",
          "c4.xlarge",
          "c4.2xlarge",
          "c4.4xlarge",
          "c4.8xlarge"
        ),
        maxvCpus = 128L,
        minvCpus = 0L,
        securityGroupIds = list(
          "sg-cf5093b2"
        ),
        subnets = list(
          "subnet-220c0e0a",
          "subnet-1a95556d",
          "subnet-978f6dce"
        ),
        tags = list(
          Name = "Batch Instance - C4OnDemand"
        )
      ),
      serviceRole = "arn:aws:iam::012345678910:role/AWSBatchServiceRole",
      state = "ENABLED"
    )

    # This example creates a managed compute environment with the M4 instance
    # type that is launched when the Spot bid price is at or below 20% of the
    # On-Demand price for the instance type. The compute environment is called
    # M4Spot.
    svc$create_compute_environment(
      type = "MANAGED",
      computeEnvironmentName = "M4Spot",
      computeResources = list(
        type = "SPOT",
        bidPercentage = 20L,
        desiredvCpus = 4L,
        ec2KeyPair = "id_rsa",
        instanceRole = "ecsInstanceRole",
        instanceTypes = list(
          "m4"
        ),
        maxvCpus = 128L,
        minvCpus = 0L,
        securityGroupIds = list(
          "sg-cf5093b2"
        ),
        spotIamFleetRole = "arn:aws:iam::012345678910:role/aws-ec2-spot-fleet-role",
        subnets = list(
          "subnet-220c0e0a",
          "subnet-1a95556d",
          "subnet-978f6dce"
        ),
        tags = list(
          Name = "Batch Instance - M4Spot"
        )
      ),
      serviceRole = "arn:aws:iam::012345678910:role/AWSBatchServiceRole",
      state = "ENABLED"
    )

    ## End(Not run)
