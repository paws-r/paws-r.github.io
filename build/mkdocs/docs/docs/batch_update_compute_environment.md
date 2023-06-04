<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_update_compute_environment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an Batch compute environment

### Description

Updates an Batch compute environment.

### Usage

    batch_update_compute_environment(computeEnvironment, state,
      unmanagedvCpus, computeResources, serviceRole, updatePolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_update_compute_environment_:_computeEnvironment">computeEnvironment</code></td>
<td><p>[required] The name or full Amazon Resource Name (ARN) of the
compute environment to update.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_update_compute_environment_:_state">state</code></td>
<td><p>The state of the compute environment. Compute environments in the
<code>ENABLED</code> state can accept jobs from a queue and scale in or
out automatically based on the workload demand of its associated
queues.</p>
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
<tr class="odd">
<td><code
id="batch_update_compute_environment_:_unmanagedvCpus">unmanagedvCpus</code></td>
<td><p>The maximum number of vCPUs expected to be used for an unmanaged
compute environment. Don't specify this parameter for a managed compute
environment. This parameter is only used for fair share scheduling to
reserve vCPU capacity for new share identifiers. If this parameter isn't
provided for a fair share job queue, no vCPU capacity is
reserved.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_update_compute_environment_:_computeResources">computeResources</code></td>
<td><p>Details of the compute resources managed by the compute
environment. Required for a managed compute environment. For more
information, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html">Compute
Environments</a> in the <em>Batch User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_update_compute_environment_:_serviceRole">serviceRole</code></td>
<td><p>The full Amazon Resource Name (ARN) of the IAM role that allows
Batch to make calls to other Amazon Web Services services on your
behalf. For more information, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html">Batch
service IAM role</a> in the <em>Batch User Guide</em>.</p>
<p>If the compute environment has a service-linked role, it can't be
changed to use a regular IAM role. Likewise, if the compute environment
has a regular IAM role, it can't be changed to use a service-linked
role. To update the parameters for the compute environment that require
an infrastructure update to change, the
<strong>AWSServiceRoleForBatch</strong> service-linked role must be
used. For more information, see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating
compute environments</a> in the <em>Batch User Guide</em>.</p>
<p>If your specified role has a path other than <code>/</code>, then you
must either specify the full role ARN (recommended) or prefix the role
name with the path.</p>
<p>Depending on how you created your Batch service role, its ARN might
contain the <code>service-role</code> path prefix. When you only specify
the name of the service role, Batch assumes that your ARN doesn't use
the <code>service-role</code> path prefix. Because of this, we recommend
that you specify the full ARN of your service role when you create
compute environments.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_update_compute_environment_:_updatePolicy">updatePolicy</code></td>
<td><p>Specifies the updated infrastructure update policy for the
compute environment. For more information about infrastructure updates,
see <a
href="https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html">Updating
compute environments</a> in the <em>Batch User Guide</em>.</p></td>
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

    svc$update_compute_environment(
      computeEnvironment = "string",
      state = "ENABLED"|"DISABLED",
      unmanagedvCpus = 123,
      computeResources = list(
        minvCpus = 123,
        maxvCpus = 123,
        desiredvCpus = 123,
        subnets = list(
          "string"
        ),
        securityGroupIds = list(
          "string"
        ),
        allocationStrategy = "BEST_FIT_PROGRESSIVE"|"SPOT_CAPACITY_OPTIMIZED",
        instanceTypes = list(
          "string"
        ),
        ec2KeyPair = "string",
        instanceRole = "string",
        tags = list(
          "string"
        ),
        placementGroup = "string",
        bidPercentage = 123,
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
        ),
        updateToLatestImageVersion = TRUE|FALSE,
        type = "EC2"|"SPOT"|"FARGATE"|"FARGATE_SPOT",
        imageId = "string"
      ),
      serviceRole = "string",
      updatePolicy = list(
        terminateJobsOnUpdate = TRUE|FALSE,
        jobExecutionTimeoutMinutes = 123
      )
    )

### Examples

    ## Not run: 
    # This example disables the P2OnDemand compute environment so it can be
    # deleted.
    svc$update_compute_environment(
      computeEnvironment = "P2OnDemand",
      state = "DISABLED"
    )

    ## End(Not run)
