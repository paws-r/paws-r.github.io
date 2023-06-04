<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_update_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the parameters of a service

### Description

Modifies the parameters of a service.

For services using the rolling update (`ECS`) you can update the desired
count, deployment configuration, network configuration, load balancers,
service registries, enable ECS managed tags option, propagate tags
option, task placement constraints and strategies, and task definition.
When you update any of these parameters, Amazon ECS starts new tasks
with the new configuration.

For services using the blue/green (`CODE_DEPLOY`) deployment controller,
only the desired count, deployment configuration, health check grace
period, task placement constraints and strategies, enable ECS managed
tags option, and propagate tags can be updated using this API. If the
network configuration, platform version, task definition, or load
balancer need to be updated, create a new CodeDeploy deployment. For
more information, see
[CreateDeployment](https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html)
in the *CodeDeploy API Reference*.

For services using an external deployment controller, you can update
only the desired count, task placement constraints and strategies,
health check grace period, enable ECS managed tags option, and propagate
tags option, using this API. If the launch type, load balancer, network
configuration, platform version, or task definition need to be updated,
create a new task set For more information, see `create_task_set`.

You can add to or subtract from the number of instantiations of a task
definition in a service by specifying the cluster that the service is
running in and a new `desiredCount` parameter.

If you have updated the Docker image of your application, you can create
a new task definition with that image and deploy it to your service. The
service scheduler uses the minimum healthy percent and maximum percent
parameters (in the service's deployment configuration) to determine the
deployment strategy.

If your updated Docker image uses the same tag as what is in the
existing task definition for your service (for example,
`my_image:latest`), you don't need to create a new revision of your task
definition. You can update the service using the `forceNewDeployment`
option. The new tasks launched by the deployment pull the current
image/tag combination from your repository when they start.

You can also update the deployment configuration of a service. When a
deployment is triggered by updating the task definition of a service,
the service scheduler uses the deployment configuration parameters,
`minimumHealthyPercent` and `maximumPercent`, to determine the
deployment strategy.

-   If `minimumHealthyPercent` is below 100%, the scheduler can ignore
    `desiredCount` temporarily during a deployment. For example, if
    `desiredCount` is four tasks, a minimum of 50% allows the scheduler
    to stop two existing tasks before starting two new tasks. Tasks for
    services that don't use a load balancer are considered healthy if
    they're in the `RUNNING` state. Tasks for services that use a load
    balancer are considered healthy if they're in the `RUNNING` state
    and are reported as healthy by the load balancer.

-   The `maximumPercent` parameter represents an upper limit on the
    number of running tasks during a deployment. You can use it to
    define the deployment batch size. For example, if `desiredCount` is
    four tasks, a maximum of 200% starts four new tasks before stopping
    the four older tasks (provided that the cluster resources required
    to do this are available).

When `update_service` stops a task during a deployment, the equivalent
of `⁠docker stop⁠` is issued to the containers running in the task. This
results in a `SIGTERM` and a 30-second timeout. After this, `SIGKILL` is
sent and the containers are forcibly stopped. If the container handles
the `SIGTERM` gracefully and exits within 30 seconds from receiving it,
no `SIGKILL` is sent.

When the service scheduler launches new tasks, it determines task
placement in your cluster with the following logic.

-   Determine which of the container instances in your cluster can
    support your service's task definition. For example, they have the
    required CPU, memory, ports, and container instance attributes.

-   By default, the service scheduler attempts to balance tasks across
    Availability Zones in this manner even though you can choose a
    different placement strategy.

    -   Sort the valid container instances by the fewest number of
        running tasks for this service in the same Availability Zone as
        the instance. For example, if zone A has one running service
        task and zones B and C each have zero, valid container instances
        in either zone B or C are considered optimal for placement.

    -   Place the new service task on a valid container instance in an
        optimal Availability Zone (based on the previous steps),
        favoring container instances with the fewest number of running
        tasks for this service.

When the service scheduler stops running tasks, it attempts to maintain
balance across the Availability Zones in your cluster using the
following logic:

-   Sort the container instances by the largest number of running tasks
    for this service in the same Availability Zone as the instance. For
    example, if zone A has one running service task and zones B and C
    each have two, container instances in either zone B or C are
    considered optimal for termination.

-   Stop the task on a container instance in an optimal Availability
    Zone (based on the previous steps), favoring container instances
    with the largest number of running tasks for this service.

You must have a service-linked role when you update any of the following
service properties. If you specified a custom role when you created the
service, Amazon ECS automatically replaces the
[roleARN](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_Service.html#ECS-Type-Service-roleArn)
associated with the service with the ARN of your service-linked role.
For more information, see [Service-linked
roles](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html)
in the *Amazon Elastic Container Service Developer Guide*.

-   `⁠loadBalancers,⁠`

-   `serviceRegistries`

### Usage

    ecs_update_service(cluster, service, desiredCount, taskDefinition,
      capacityProviderStrategy, deploymentConfiguration, networkConfiguration,
      placementConstraints, placementStrategy, platformVersion,
      forceNewDeployment, healthCheckGracePeriodSeconds, enableExecuteCommand,
      enableECSManagedTags, loadBalancers, propagateTags, serviceRegistries,
      serviceConnectConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_update_service_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that your service runs on. If you do not specify a cluster, the default
cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_update_service_:_service">service</code></td>
<td><p>[required] The name of the service to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_update_service_:_desiredCount">desiredCount</code></td>
<td><p>The number of instantiations of the task to place and keep
running in your service.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_service_:_taskDefinition">taskDefinition</code></td>
<td><p>The <code>family</code> and <code>revision</code>
(<code>family:revision</code>) or full ARN of the task definition to run
in your service. If a <code>revision</code> is not specified, the latest
<code>ACTIVE</code> revision is used. If you modify the task definition
with <code>update_service</code>, Amazon ECS spawns a task with the new
version of the task definition and then stops an old task after the new
version is running.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_update_service_:_capacityProviderStrategy">capacityProviderStrategy</code></td>
<td><p>The capacity provider strategy to update the service to use.</p>
<p>if the service uses the default capacity provider strategy for the
cluster, the service can be updated to use one or more capacity
providers as opposed to the default capacity provider strategy. However,
when a service is using a capacity provider strategy that's not the
default capacity provider strategy, the service can't be updated to use
the cluster's default capacity provider strategy.</p>
<p>A capacity provider strategy consists of one or more capacity
providers along with the <code>base</code> and <code>weight</code> to
assign to them. A capacity provider must be associated with the cluster
to be used in a capacity provider strategy. The
<code>put_cluster_capacity_providers</code> API is used to associate a
capacity provider with a cluster. Only capacity providers with an
<code>ACTIVE</code> or <code>UPDATING</code> status can be used.</p>
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
id="ecs_update_service_:_deploymentConfiguration">deploymentConfiguration</code></td>
<td><p>Optional deployment parameters that control how many tasks run
during the deployment and the ordering of stopping and starting
tasks.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_update_service_:_networkConfiguration">networkConfiguration</code></td>
<td><p>An object representing the network configuration for the
service.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_service_:_placementConstraints">placementConstraints</code></td>
<td><p>An array of task placement constraint objects to update the
service to use. If no value is specified, the existing placement
constraints for the service will remain unchanged. If this value is
specified, it will override any existing placement constraints defined
for the service. To remove all existing placement constraints, specify
an empty array.</p>
<p>You can specify a maximum of 10 constraints for each task. This limit
includes constraints in the task definition and those specified at
runtime.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_update_service_:_placementStrategy">placementStrategy</code></td>
<td><p>The task placement strategy objects to update the service to use.
If no value is specified, the existing placement strategy for the
service will remain unchanged. If this value is specified, it will
override the existing placement strategy defined for the service. To
remove an existing placement strategy, specify an empty object.</p>
<p>You can specify a maximum of five strategy rules for each
service.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_service_:_platformVersion">platformVersion</code></td>
<td><p>The platform version that your tasks in the service run on. A
platform version is only specified for tasks using the Fargate launch
type. If a platform version is not specified, the <code>LATEST</code>
platform version is used. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate
Platform Versions</a> in the <em>Amazon Elastic Container Service
Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_update_service_:_forceNewDeployment">forceNewDeployment</code></td>
<td><p>Determines whether to force a new deployment of the service. By
default, deployments aren't forced. You can use this option to start a
new deployment with no service definition changes. For example, you can
update a service's tasks to use a newer Docker image with the same
image/tag combination (<code>my_image:latest</code>) or to roll Fargate
tasks onto a newer platform version.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_service_:_healthCheckGracePeriodSeconds">healthCheckGracePeriodSeconds</code></td>
<td><p>The period of time, in seconds, that the Amazon ECS service
scheduler ignores unhealthy Elastic Load Balancing target health checks
after a task has first started. This is only valid if your service is
configured to use a load balancer. If your service's tasks take a while
to start and respond to Elastic Load Balancing health checks, you can
specify a health check grace period of up to 2,147,483,647 seconds.
During that time, the Amazon ECS service scheduler ignores the Elastic
Load Balancing health check status. This grace period can prevent the
ECS service scheduler from marking tasks as unhealthy and stopping them
before they have time to come up.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_update_service_:_enableExecuteCommand">enableExecuteCommand</code></td>
<td><p>If <code>true</code>, this enables execute command functionality
on all task containers.</p>
<p>If you do not want to override the value that was set when the
service was created, you can set this to <code>null</code> when
performing this action.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_service_:_enableECSManagedTags">enableECSManagedTags</code></td>
<td><p>Determines whether to turn on Amazon ECS managed tags for the
tasks in the service. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging
Your Amazon ECS Resources</a> in the <em>Amazon Elastic Container
Service Developer Guide</em>.</p>
<p>Only tasks launched after the update will reflect the update. To
update the tags on all tasks, set <code>forceNewDeployment</code> to
<code>true</code>, so that Amazon ECS starts new tasks with the updated
tags.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_update_service_:_loadBalancers">loadBalancers</code></td>
<td><p>A list of Elastic Load Balancing load balancer objects. It
contains the load balancer name, the container name, and the container
port to access from the load balancer. The container name is as it
appears in a container definition.</p>
<p>When you add, update, or remove a load balancer configuration, Amazon
ECS starts new tasks with the updated Elastic Load Balancing
configuration, and then stops the old tasks when the new tasks are
running.</p>
<p>For services that use rolling updates, you can add, update, or remove
Elastic Load Balancing target groups. You can update from a single
target group to multiple target groups and from multiple target groups
to a single target group.</p>
<p>For services that use blue/green deployments, you can update Elastic
Load Balancing target groups by using <code>CreateDeployment</code>
through CodeDeploy. Note that multiple target groups are not supported
for blue/green deployments. For more information see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html">Register
multiple target groups with a service</a> in the <em>Amazon Elastic
Container Service Developer Guide</em>.</p>
<p>For services that use the external deployment controller, you can
add, update, or remove load balancers by using
<code>create_task_set</code>. Note that multiple target groups are not
supported for external deployments. For more information see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html">Register
multiple target groups with a service</a> in the <em>Amazon Elastic
Container Service Developer Guide</em>.</p>
<p>You can remove existing <code>loadBalancers</code> by passing an
empty list.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_service_:_propagateTags">propagateTags</code></td>
<td><p>Determines whether to propagate the tags from the task definition
or the service to the task. If no value is specified, the tags aren't
propagated.</p>
<p>Only tasks launched after the update will reflect the update. To
update the tags on all tasks, set <code>forceNewDeployment</code> to
<code>true</code>, so that Amazon ECS starts new tasks with the updated
tags.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_update_service_:_serviceRegistries">serviceRegistries</code></td>
<td><p>The details for the service discovery registries to assign to
this service. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
Discovery</a>.</p>
<p>When you add, update, or remove the service registries configuration,
Amazon ECS starts new tasks with the updated service registries
configuration, and then stops the old tasks when the new tasks are
running.</p>
<p>You can remove existing <code>serviceRegistries</code> by passing an
empty list.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_service_:_serviceConnectConfiguration">serviceConnectConfiguration</code></td>
<td><p>The configuration for this service to discover and connect to
services, and be discovered by, and connected from, other services
within a namespace.</p>
<p>Tasks that run in a namespace can use short names to connect to
services in the namespace. Tasks can connect to services across all of
the clusters in the namespace. Tasks connect through a managed proxy
container that collects logs and metrics for increased visibility. Only
the tasks that Amazon ECS services create are supported with Service
Connect. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html">Service
Connect</a> in the <em>Amazon Elastic Container Service Developer
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      service = list(
        serviceArn = "string",
        serviceName = "string",
        clusterArn = "string",
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
        status = "string",
        desiredCount = 123,
        runningCount = 123,
        pendingCount = 123,
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
        taskDefinition = "string",
        deploymentConfiguration = list(
          deploymentCircuitBreaker = list(
            enable = TRUE|FALSE,
            rollback = TRUE|FALSE
          ),
          maximumPercent = 123,
          minimumHealthyPercent = 123,
          alarms = list(
            alarmNames = list(
              "string"
            ),
            enable = TRUE|FALSE,
            rollback = TRUE|FALSE
          )
        ),
        taskSets = list(
          list(
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
        ),
        deployments = list(
          list(
            id = "string",
            status = "string",
            taskDefinition = "string",
            desiredCount = 123,
            pendingCount = 123,
            runningCount = 123,
            failedTasks = 123,
            createdAt = as.POSIXct(
              "2015-01-01"
            ),
            updatedAt = as.POSIXct(
              "2015-01-01"
            ),
            capacityProviderStrategy = list(
              list(
                capacityProvider = "string",
                weight = 123,
                base = 123
              )
            ),
            launchType = "EC2"|"FARGATE"|"EXTERNAL",
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
            rolloutState = "COMPLETED"|"FAILED"|"IN_PROGRESS",
            rolloutStateReason = "string",
            serviceConnectConfiguration = list(
              enabled = TRUE|FALSE,
              namespace = "string",
              services = list(
                list(
                  portName = "string",
                  discoveryName = "string",
                  clientAliases = list(
                    list(
                      port = 123,
                      dnsName = "string"
                    )
                  ),
                  ingressPortOverride = 123
                )
              ),
              logConfiguration = list(
                logDriver = "json-file"|"syslog"|"journald"|"gelf"|"fluentd"|"awslogs"|"splunk"|"awsfirelens",
                options = list(
                  "string"
                ),
                secretOptions = list(
                  list(
                    name = "string",
                    valueFrom = "string"
                  )
                )
              )
            ),
            serviceConnectResources = list(
              list(
                discoveryName = "string",
                discoveryArn = "string"
              )
            )
          )
        ),
        roleArn = "string",
        events = list(
          list(
            id = "string",
            createdAt = as.POSIXct(
              "2015-01-01"
            ),
            message = "string"
          )
        ),
        createdAt = as.POSIXct(
          "2015-01-01"
        ),
        placementConstraints = list(
          list(
            type = "distinctInstance"|"memberOf",
            expression = "string"
          )
        ),
        placementStrategy = list(
          list(
            type = "random"|"spread"|"binpack",
            field = "string"
          )
        ),
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
        healthCheckGracePeriodSeconds = 123,
        schedulingStrategy = "REPLICA"|"DAEMON",
        deploymentController = list(
          type = "ECS"|"CODE_DEPLOY"|"EXTERNAL"
        ),
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        createdBy = "string",
        enableECSManagedTags = TRUE|FALSE,
        propagateTags = "TASK_DEFINITION"|"SERVICE"|"NONE",
        enableExecuteCommand = TRUE|FALSE
      )
    )

### Request syntax

    svc$update_service(
      cluster = "string",
      service = "string",
      desiredCount = 123,
      taskDefinition = "string",
      capacityProviderStrategy = list(
        list(
          capacityProvider = "string",
          weight = 123,
          base = 123
        )
      ),
      deploymentConfiguration = list(
        deploymentCircuitBreaker = list(
          enable = TRUE|FALSE,
          rollback = TRUE|FALSE
        ),
        maximumPercent = 123,
        minimumHealthyPercent = 123,
        alarms = list(
          alarmNames = list(
            "string"
          ),
          enable = TRUE|FALSE,
          rollback = TRUE|FALSE
        )
      ),
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
      placementConstraints = list(
        list(
          type = "distinctInstance"|"memberOf",
          expression = "string"
        )
      ),
      placementStrategy = list(
        list(
          type = "random"|"spread"|"binpack",
          field = "string"
        )
      ),
      platformVersion = "string",
      forceNewDeployment = TRUE|FALSE,
      healthCheckGracePeriodSeconds = 123,
      enableExecuteCommand = TRUE|FALSE,
      enableECSManagedTags = TRUE|FALSE,
      loadBalancers = list(
        list(
          targetGroupArn = "string",
          loadBalancerName = "string",
          containerName = "string",
          containerPort = 123
        )
      ),
      propagateTags = "TASK_DEFINITION"|"SERVICE"|"NONE",
      serviceRegistries = list(
        list(
          registryArn = "string",
          port = 123,
          containerName = "string",
          containerPort = 123
        )
      ),
      serviceConnectConfiguration = list(
        enabled = TRUE|FALSE,
        namespace = "string",
        services = list(
          list(
            portName = "string",
            discoveryName = "string",
            clientAliases = list(
              list(
                port = 123,
                dnsName = "string"
              )
            ),
            ingressPortOverride = 123
          )
        ),
        logConfiguration = list(
          logDriver = "json-file"|"syslog"|"journald"|"gelf"|"fluentd"|"awslogs"|"splunk"|"awsfirelens",
          options = list(
            "string"
          ),
          secretOptions = list(
            list(
              name = "string",
              valueFrom = "string"
            )
          )
        )
      )
    )

### Examples

    ## Not run: 
    # This example updates the my-http-service service to use the
    # amazon-ecs-sample task definition.
    svc$update_service(
      service = "my-http-service",
      taskDefinition = "amazon-ecs-sample"
    )

    # This example updates the desired count of the my-http-service service to
    # 10.
    svc$update_service(
      desiredCount = 10L,
      service = "my-http-service"
    )

    ## End(Not run)
