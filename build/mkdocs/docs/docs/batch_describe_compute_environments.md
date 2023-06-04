<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_describe_compute_environments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your compute environments

### Description

Describes one or more of your compute environments.

If you're using an unmanaged compute environment, you can use the
`DescribeComputeEnvironment` operation to determine the `ecsClusterArn`
that you launch your Amazon ECS container instances into.

### Usage

    batch_describe_compute_environments(computeEnvironments, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_describe_compute_environments_:_computeEnvironments">computeEnvironments</code></td>
<td><p>A list of up to 100 compute environment names or full Amazon
Resource Name (ARN) entries.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_describe_compute_environments_:_maxResults">maxResults</code></td>
<td><p>The maximum number of cluster results returned by
<code>describe_compute_environments</code> in paginated output. When
this parameter is used, <code>describe_compute_environments</code> only
returns <code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>describe_compute_environments</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter isn't used, then
<code>describe_compute_environments</code> returns up to 100 results and
a <code>nextToken</code> value if applicable.</p></td>
</tr>
<tr class="odd">
<td><code
id="batch_describe_compute_environments_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>describe_compute_environments</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. This value is
<code>null</code> when there are no more results to return.</p>
<p>Treat this token as an opaque identifier that's only used to retrieve
the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      computeEnvironments = list(
        list(
          computeEnvironmentName = "string",
          computeEnvironmentArn = "string",
          unmanagedvCpus = 123,
          ecsClusterArn = "string",
          tags = list(
            "string"
          ),
          type = "MANAGED"|"UNMANAGED",
          state = "ENABLED"|"DISABLED",
          status = "CREATING"|"UPDATING"|"DELETING"|"DELETED"|"VALID"|"INVALID",
          statusReason = "string",
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
          updatePolicy = list(
            terminateJobsOnUpdate = TRUE|FALSE,
            jobExecutionTimeoutMinutes = 123
          ),
          eksConfiguration = list(
            eksClusterArn = "string",
            kubernetesNamespace = "string"
          ),
          containerOrchestrationType = "ECS"|"EKS",
          uuid = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_compute_environments(
      computeEnvironments = list(
        "string"
      ),
      maxResults = 123,
      nextToken = "string"
    )

### Examples

    ## Not run: 
    # This example describes the P2OnDemand compute environment.
    svc$describe_compute_environments(
      computeEnvironments = list(
        "P2OnDemand"
      )
    )

    ## End(Not run)
