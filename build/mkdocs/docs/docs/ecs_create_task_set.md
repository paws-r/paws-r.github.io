<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_create_task_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a task set in the specified cluster and service

### Description

Create a task set in the specified cluster and service. This is used
when a service uses the `EXTERNAL` deployment controller type. For more
information, see [Amazon ECS deployment
types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_create_task_set(service, cluster, externalId, taskDefinition,
      networkConfiguration, loadBalancers, serviceRegistries, launchType,
      capacityProviderStrategy, platformVersion, scale, clientToken, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_create_task_set_:_service">service</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the service to create the task set in.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_create_task_set_:_cluster">cluster</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the cluster that hosts the service to create the task set in.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_create_task_set_:_externalId">externalId</code></td>
<td><p>An optional non-unique tag that identifies this task set in
external systems. If the task set is associated with a service discovery
registry, the tasks in this task set will have the
<code>ECS_TASK_SET_EXTERNAL_ID</code> Cloud Map attribute set to the
provided value.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_task_set_:_taskDefinition">taskDefinition</code></td>
<td><p>[required] The task definition for the tasks in the task set to
use.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_task_set_:_networkConfiguration">networkConfiguration</code></td>
<td><p>An object representing the network configuration for a task
set.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_task_set_:_loadBalancers">loadBalancers</code></td>
<td><p>A load balancer object representing the load balancer to use with
the task set. The supported load balancer types are either an
Application Load Balancer or a Network Load Balancer.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_task_set_:_serviceRegistries">serviceRegistries</code></td>
<td><p>The details of the service discovery registries to assign to this
task set. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
discovery</a>.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_create_task_set_:_launchType">launchType</code></td>
<td><p>The launch type that new tasks in the task set uses. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon
ECS launch types</a> in the <em>Amazon Elastic Container Service
Developer Guide</em>.</p>
<p>If a <code>launchType</code> is specified, the
<code>capacityProviderStrategy</code> parameter must be
omitted.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_task_set_:_capacityProviderStrategy">capacityProviderStrategy</code></td>
<td><p>The capacity provider strategy to use for the task set.</p>
<p>A capacity provider strategy consists of one or more capacity
providers along with the <code>base</code> and <code>weight</code> to
assign to them. A capacity provider must be associated with the cluster
to be used in a capacity provider strategy. The
<code>put_cluster_capacity_providers</code> API is used to associate a
capacity provider with a cluster. Only capacity providers with an
<code>ACTIVE</code> or <code>UPDATING</code> status can be used.</p>
<p>If a <code>capacityProviderStrategy</code> is specified, the
<code>launchType</code> parameter must be omitted. If no
<code>capacityProviderStrategy</code> or <code>launchType</code> is
specified, the <code>defaultCapacityProviderStrategy</code> for the
cluster is used.</p>
<p>If specifying a capacity provider that uses an Auto Scaling group,
the capacity provider must already be created. New capacity providers
can be created with the <code>create_capacity_provider</code> API
operation.</p>
<p>To use a Fargate capacity provider, specify either the
<code>FARGATE</code> or <code>FARGATE_SPOT</code> capacity providers.
The Fargate capacity providers are available to all accounts and only
need to be associated with a cluster to be used.</p>
<p>The <code>put_cluster_capacity_providers</code> API operation is used
to update the list of available capacity providers for a cluster after
the cluster is created.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_task_set_:_platformVersion">platformVersion</code></td>
<td><p>The platform version that the tasks in the task set uses. A
platform version is specified only for tasks using the Fargate launch
type. If one isn't specified, the <code>LATEST</code> platform version
is used.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_create_task_set_:_scale">scale</code></td>
<td><p>A floating-point percentage of the desired number of tasks to
place and keep running in the task set.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_create_task_set_:_clientToken">clientToken</code></td>
<td><p>The identifier that you provide to ensure the idempotency of the
request. It's case sensitive and must be unique. It can be up to 32
ASCII characters are allowed.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_create_task_set_:_tags">tags</code></td>
<td><p>The metadata that you apply to the task set to help you
categorize and organize them. Each tag consists of a key and an optional
value. You define both. When a service is deleted, the tags are
deleted.</p>
<p>The following basic restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of tags per resource - 50</p></li>
<li><p>For each resource, each tag key must be unique, and each tag key
can have only one value.</p></li>
<li><p>Maximum key length - 128 Unicode characters in UTF-8</p></li>
<li><p>Maximum value length - 256 Unicode characters in UTF-8</p></li>
<li><p>If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _ :
/ @.</p></li>
<li><p>Tag keys and values are case-sensitive.</p></li>
<li><p>Do not use <code style="white-space: pre;">⁠aws:⁠</code>, <code
style="white-space: pre;">⁠AWS:⁠</code>, or any upper or lowercase
combination of such as a prefix for either keys or values as it is
reserved for Amazon Web Services use. You cannot edit or delete tag keys
or values with this prefix. Tags with this prefix do not count against
your tags per resource limit.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      taskSet = list(
        id = "string",
        taskSetArn = "string",
        serviceArn = "string",
        clusterArn = "string",
        startedBy = "string",
        externalId = "string",
        status = "string",
        taskDefinition = "string",
        computedDesiredCount = 123,
        pendingCount = 123,
        runningCount = 123,
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        updatedAt = as.POSIXct(
          "2015-01-01"
        ),
        launchType = "EC2"|"FARGATE"|"EXTERNAL",
        capacityProviderStrategy = list(
          list(
            capacityProvider = "string",
            weight = 123,
            base = 123
          )
        ),
        platformVersion = "string",
        platformFamily = "string",
        networkConfiguration = list(
          awsvpcConfiguration = list(
            subnets = list(
              "string"
            ),
            securityGroups = list(
              "string"
            ),
            assignPublicIp = "ENABLED"|"DISABLED"
          )
        ),
        loadBalancers = list(
          list(
            targetGroupArn = "string",
            loadBalancerName = "string",
            containerName = "string",
            containerPort = 123
          )
        ),
        serviceRegistries = list(
          list(
            registryArn = "string",
            port = 123,
            containerName = "string",
            containerPort = 123
          )
        ),
        scale = list(
          value = 123.0,
          unit = "PERCENT"
        ),
        stabilityStatus = "STEADY_STATE"|"STABILIZING",
        stabilityStatusAt = as.POSIXct(
          "2015-01-01"
        ),
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_task_set(
      service = "string",
      cluster = "string",
      externalId = "string",
      taskDefinition = "string",
      networkConfiguration = list(
        awsvpcConfiguration = list(
          subnets = list(
            "string"
          ),
          securityGroups = list(
            "string"
          ),
          assignPublicIp = "ENABLED"|"DISABLED"
        )
      ),
      loadBalancers = list(
        list(
          targetGroupArn = "string",
          loadBalancerName = "string",
          containerName = "string",
          containerPort = 123
        )
      ),
      serviceRegistries = list(
        list(
          registryArn = "string",
          port = 123,
          containerName = "string",
          containerPort = 123
        )
      ),
      launchType = "EC2"|"FARGATE"|"EXTERNAL",
      capacityProviderStrategy = list(
        list(
          capacityProvider = "string",
          weight = 123,
          base = 123
        )
      ),
      platformVersion = "string",
      scale = list(
        value = 123.0,
        unit = "PERCENT"
      ),
      clientToken = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
