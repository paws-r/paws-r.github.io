<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_create_service</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs and maintains your desired number of tasks from a specified task definition

### Description

Runs and maintains your desired number of tasks from a specified task
definition. If the number of tasks running in a service drops below the
`desiredCount`, Amazon ECS runs another copy of the task in the
specified cluster. To update an existing service, see the
`update_service` action.

Starting April 15, 2023, Amazon Web Services will not onboard new
customers to Amazon Elastic Inference (EI), and will help current
customers migrate their workloads to options that offer better price and
performance. After April 15, 2023, new customers will not be able to
launch instances with Amazon EI accelerators in Amazon SageMaker, Amazon
ECS, or Amazon EC2. However, customers who have used Amazon EI at least
once during the past 30-day period are considered current customers and
will be able to continue using the service.

In addition to maintaining the desired count of tasks in your service,
you can optionally run your service behind one or more load balancers.
The load balancers distribute traffic across the tasks that are
associated with the service. For more information, see [Service load
balancing](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html)
in the *Amazon Elastic Container Service Developer Guide*.

Tasks for services that don't use a load balancer are considered healthy
if they're in the `RUNNING` state. Tasks for services that use a load
balancer are considered healthy if they're in the `RUNNING` state and
are reported as healthy by the load balancer.

There are two service scheduler strategies available:

-   `REPLICA` - The replica scheduling strategy places and maintains
    your desired number of tasks across your cluster. By default, the
    service scheduler spreads tasks across Availability Zones. You can
    use task placement strategies and constraints to customize task
    placement decisions. For more information, see [Service scheduler
    concepts](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html)
    in the *Amazon Elastic Container Service Developer Guide*.

-   `DAEMON` - The daemon scheduling strategy deploys exactly one task
    on each active container instance that meets all of the task
    placement constraints that you specify in your cluster. The service
    scheduler also evaluates the task placement constraints for running
    tasks. It also stops tasks that don't meet the placement
    constraints. When using this strategy, you don't need to specify a
    desired number of tasks, a task placement strategy, or use Service
    Auto Scaling policies. For more information, see [Service scheduler
    concepts](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html)
    in the *Amazon Elastic Container Service Developer Guide*.

You can optionally specify a deployment configuration for your service.
The deployment is initiated by changing properties. For example, the
deployment might be initiated by the task definition or by your desired
count of a service. This is done with an `update_service` operation. The
default value for a replica service for `minimumHealthyPercent` is 100%.
The default value for a daemon service for `minimumHealthyPercent` is
0%.

If a service uses the `ECS` deployment controller, the minimum healthy
percent represents a lower limit on the number of tasks in a service
that must remain in the `RUNNING` state during a deployment.
Specifically, it represents it as a percentage of your desired number of
tasks (rounded up to the nearest integer). This happens when any of your
container instances are in the `DRAINING` state if the service contains
tasks using the EC2 launch type. Using this parameter, you can deploy
without using additional cluster capacity. For example, if you set your
service to have desired number of four tasks and a minimum healthy
percent of 50%, the scheduler might stop two existing tasks to free up
cluster capacity before starting two new tasks. If they're in the
`RUNNING` state, tasks for services that don't use a load balancer are
considered healthy . If they're in the `RUNNING` state and reported as
healthy by the load balancer, tasks for services that *do* use a load
balancer are considered healthy . The default value for minimum healthy
percent is 100%.

If a service uses the `ECS` deployment controller, the **maximum
percent** parameter represents an upper limit on the number of tasks in
a service that are allowed in the `RUNNING` or `PENDING` state during a
deployment. Specifically, it represents it as a percentage of the
desired number of tasks (rounded down to the nearest integer). This
happens when any of your container instances are in the `DRAINING` state
if the service contains tasks using the EC2 launch type. Using this
parameter, you can define the deployment batch size. For example, if
your service has a desired number of four tasks and a maximum percent
value of 200%, the scheduler may start four new tasks before stopping
the four older tasks (provided that the cluster resources required to do
this are available). The default value for maximum percent is 200%.

If a service uses either the `CODE_DEPLOY` or `EXTERNAL` deployment
controller types and tasks that use the EC2 launch type, the **minimum
healthy percent** and **maximum percent** values are used only to define
the lower and upper limit on the number of the tasks in the service that
remain in the `RUNNING` state. This is while the container instances are
in the `DRAINING` state. If the tasks in the service use the Fargate
launch type, the minimum healthy percent and maximum percent values
aren't used. This is the case even if they're currently visible when
describing your service.

When creating a service that uses the `EXTERNAL` deployment controller,
you can specify only parameters that aren't controlled at the task set
level. The only required parameter is the service name. You control your
services using the `create_task_set` operation. For more information,
see [Amazon ECS deployment
types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html)
in the *Amazon Elastic Container Service Developer Guide*.

When the service scheduler launches new tasks, it determines task
placement. For information about task placement and task placement
strategies, see [Amazon ECS task
placement](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement.html)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_create_service(cluster, serviceName, taskDefinition, loadBalancers,
      serviceRegistries, desiredCount, clientToken, launchType,
      capacityProviderStrategy, platformVersion, role,
      deploymentConfiguration, placementConstraints, placementStrategy,
      networkConfiguration, healthCheckGracePeriodSeconds, schedulingStrategy,
      deploymentController, tags, enableECSManagedTags, propagateTags,
      enableExecuteCommand, serviceConnectConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_create_service_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that you run your service on. If you do not specify a cluster, the
default cluster is assumed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_create_service_:_serviceName">serviceName</code></td>
<td><p>[required] The name of your service. Up to 255 letters (uppercase
and lowercase), numbers, underscores, and hyphens are allowed. Service
names must be unique within a cluster, but you can have similarly named
services in multiple clusters within a Region or across multiple
Regions.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_service_:_taskDefinition">taskDefinition</code></td>
<td><p>The <code>family</code> and <code>revision</code>
(<code>family:revision</code>) or full ARN of the task definition to run
in your service. If a <code>revision</code> isn't specified, the latest
<code>ACTIVE</code> revision is used.</p>
<p>A task definition must be specified if the service uses either the
<code>ECS</code> or <code>CODE_DEPLOY</code> deployment controllers.</p>
<p>For more information about deployment types, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon
ECS deployment types</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_service_:_loadBalancers">loadBalancers</code></td>
<td><p>A load balancer object representing the load balancers to use
with your service. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html">Service
load balancing</a> in the <em>Amazon Elastic Container Service Developer
Guide</em>.</p>
<p>If the service uses the rolling update (<code>ECS</code>) deployment
controller and using either an Application Load Balancer or Network Load
Balancer, you must specify one or more target group ARNs to attach to
the service. The service-linked role is required for services that use
multiple target groups. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Using
service-linked roles for Amazon ECS</a> in the <em>Amazon Elastic
Container Service Developer Guide</em>.</p>
<p>If the service uses the <code>CODE_DEPLOY</code> deployment
controller, the service is required to use either an Application Load
Balancer or Network Load Balancer. When creating an CodeDeploy
deployment group, you specify two target groups (referred to as a
<code>targetGroupPair</code>). During a deployment, CodeDeploy
determines which task set in your service has the status
<code>PRIMARY</code>, and it associates one target group with it. Then,
it also associates the other target group with the replacement task set.
The load balancer can also have up to two listeners: a required listener
for production traffic and an optional listener that you can use to
perform validation tests with Lambda functions before routing production
traffic to it.</p>
<p>If you use the <code>CODE_DEPLOY</code> deployment controller, these
values can be changed when updating the service.</p>
<p>For Application Load Balancers and Network Load Balancers, this
object must contain the load balancer target group ARN, the container
name, and the container port to access from the load balancer. The
container name must be as it appears in a container definition. The load
balancer name parameter must be omitted. When a task from this service
is placed on a container instance, the container instance and port
combination is registered as a target in the target group that's
specified here.</p>
<p>For Classic Load Balancers, this object must contain the load
balancer name, the container name , and the container port to access
from the load balancer. The container name must be as it appears in a
container definition. The target group ARN parameter must be omitted.
When a task from this service is placed on a container instance, the
container instance is registered with the load balancer that's specified
here.</p>
<p>Services with tasks that use the <code>awsvpc</code> network mode
(for example, those with the Fargate launch type) only support
Application Load Balancers and Network Load Balancers. Classic Load
Balancers aren't supported. Also, when you create any target groups for
these services, you must choose <code>ip</code> as the target type, not
<code>instance</code>. This is because tasks that use the
<code>awsvpc</code> network mode are associated with an elastic network
interface, not an Amazon EC2 instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_service_:_serviceRegistries">serviceRegistries</code></td>
<td><p>The details of the service discovery registry to associate with
this service. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
discovery</a>.</p>
<p>Each service may be associated with one service registry. Multiple
service registries for each service isn't supported.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_service_:_desiredCount">desiredCount</code></td>
<td><p>The number of instantiations of the specified task definition to
place and keep running in your service.</p>
<p>This is required if <code>schedulingStrategy</code> is
<code>REPLICA</code> or isn't specified. If
<code>schedulingStrategy</code> is <code>DAEMON</code> then this isn't
required.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_create_service_:_clientToken">clientToken</code></td>
<td><p>An identifier that you provide to ensure the idempotency of the
request. It must be unique and is case sensitive. Up to 32 ASCII
characters are allowed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_create_service_:_launchType">launchType</code></td>
<td><p>The infrastructure that you run your service on. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon
ECS launch types</a> in the <em>Amazon Elastic Container Service
Developer Guide</em>.</p>
<p>The <code>FARGATE</code> launch type runs your tasks on Fargate
On-Demand infrastructure.</p>
<p>Fargate Spot infrastructure is available for use but a capacity
provider strategy must be used. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/userguide/fargate-capacity-providers.html">Fargate
capacity providers</a> in the <em>Amazon ECS User Guide for
Fargate</em>.</p>
<p>The <code>EC2</code> launch type runs your tasks on Amazon EC2
instances registered to your cluster.</p>
<p>The <code>EXTERNAL</code> launch type runs your tasks on your
on-premises server or virtual machine (VM) capacity registered to your
cluster.</p>
<p>A service can use either a launch type or a capacity provider
strategy. If a <code>launchType</code> is specified, the
<code>capacityProviderStrategy</code> parameter must be
omitted.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_service_:_capacityProviderStrategy">capacityProviderStrategy</code></td>
<td><p>The capacity provider strategy to use for the service.</p>
<p>If a <code>capacityProviderStrategy</code> is specified, the
<code>launchType</code> parameter must be omitted. If no
<code>capacityProviderStrategy</code> or <code>launchType</code> is
specified, the <code>defaultCapacityProviderStrategy</code> for the
cluster is used.</p>
<p>A capacity provider strategy may contain a maximum of 6 capacity
providers.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_service_:_platformVersion">platformVersion</code></td>
<td><p>The platform version that your tasks in the service are running
on. A platform version is specified only for tasks using the Fargate
launch type. If one isn't specified, the <code>LATEST</code> platform
version is used. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate
platform versions</a> in the <em>Amazon Elastic Container Service
Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_create_service_:_role">role</code></td>
<td><p>The name or full Amazon Resource Name (ARN) of the IAM role that
allows Amazon ECS to make calls to your load balancer on your behalf.
This parameter is only permitted if you are using a load balancer with
your service and your task definition doesn't use the
<code>awsvpc</code> network mode. If you specify the <code>role</code>
parameter, you must also specify a load balancer object with the
<code>loadBalancers</code> parameter.</p>
<p>If your account has already created the Amazon ECS service-linked
role, that role is used for your service unless you specify a role here.
The service-linked role is required if your task definition uses the
<code>awsvpc</code> network mode or if the service is configured to use
service discovery, an external deployment controller, multiple target
groups, or Elastic Inference accelerators in which case you don't
specify a role here. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Using
service-linked roles for Amazon ECS</a> in the <em>Amazon Elastic
Container Service Developer Guide</em>.</p>
<p>If your specified role has a path other than <code>/</code>, then you
must either specify the full role ARN (this is recommended) or prefix
the role name with the path. For example, if a role with the name
<code>bar</code> has a path of <code
style="white-space: pre;">⁠/foo/⁠</code> then you would specify <code
style="white-space: pre;">⁠/foo/bar⁠</code> as the role name. For more
information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names">Friendly
names and paths</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_service_:_deploymentConfiguration">deploymentConfiguration</code></td>
<td><p>Optional deployment parameters that control how many tasks run
during the deployment and the ordering of stopping and starting
tasks.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_service_:_placementConstraints">placementConstraints</code></td>
<td><p>An array of placement constraint objects to use for tasks in your
service. You can specify a maximum of 10 constraints for each task. This
limit includes constraints in the task definition and those specified at
runtime.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_service_:_placementStrategy">placementStrategy</code></td>
<td><p>The placement strategy objects to use for tasks in your service.
You can specify a maximum of 5 strategy rules for each service.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_service_:_networkConfiguration">networkConfiguration</code></td>
<td><p>The network configuration for the service. This parameter is
required for task definitions that use the <code>awsvpc</code> network
mode to receive their own elastic network interface, and it isn't
supported for other network modes. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task
networking</a> in the <em>Amazon Elastic Container Service Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_service_:_healthCheckGracePeriodSeconds">healthCheckGracePeriodSeconds</code></td>
<td><p>The period of time, in seconds, that the Amazon ECS service
scheduler ignores unhealthy Elastic Load Balancing target health checks
after a task has first started. This is only used when your service is
configured to use a load balancer. If your service has a load balancer
defined and you don't specify a health check grace period value, the
default value of <code>0</code> is used.</p>
<p>If you do not use an Elastic Load Balancing, we recommend that you
use the <code>startPeriod</code> in the task definition health check
parameters. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_HealthCheck.html">Health
check</a>.</p>
<p>If your service's tasks take a while to start and respond to Elastic
Load Balancing health checks, you can specify a health check grace
period of up to 2,147,483,647 seconds (about 69 years). During that
time, the Amazon ECS service scheduler ignores health check status. This
grace period can prevent the service scheduler from marking tasks as
unhealthy and stopping them before they have time to come up.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_service_:_schedulingStrategy">schedulingStrategy</code></td>
<td><p>The scheduling strategy to use for the service. For more
information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html">Services</a>.</p>
<p>There are two service scheduler strategies available:</p>
<ul>
<li><p><code>REPLICA</code>-The replica scheduling strategy places and
maintains the desired number of tasks across your cluster. By default,
the service scheduler spreads tasks across Availability Zones. You can
use task placement strategies and constraints to customize task
placement decisions. This scheduler strategy is required if the service
uses the <code>CODE_DEPLOY</code> or <code>EXTERNAL</code> deployment
controller types.</p></li>
<li><p><code>DAEMON</code>-The daemon scheduling strategy deploys
exactly one task on each active container instance that meets all of the
task placement constraints that you specify in your cluster. The service
scheduler also evaluates the task placement constraints for running
tasks and will stop tasks that don't meet the placement constraints.
When you're using this strategy, you don't need to specify a desired
number of tasks, a task placement strategy, or use Service Auto Scaling
policies.</p>
<p>Tasks using the Fargate launch type or the <code>CODE_DEPLOY</code>
or <code>EXTERNAL</code> deployment controller types don't support the
<code>DAEMON</code> scheduling strategy.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_service_:_deploymentController">deploymentController</code></td>
<td><p>The deployment controller to use for the service. If no
deployment controller is specified, the default value of
<code>ECS</code> is used.</p></td>
</tr>
<tr class="odd">
<td><code id="ecs_create_service_:_tags">tags</code></td>
<td><p>The metadata that you apply to the service to help you categorize
and organize them. Each tag consists of a key and an optional value,
both of which you define. When a service is deleted, the tags are
deleted as well.</p>
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
<tr class="even">
<td><code
id="ecs_create_service_:_enableECSManagedTags">enableECSManagedTags</code></td>
<td><p>Specifies whether to turn on Amazon ECS managed tags for the
tasks within the service. For more information, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging
your Amazon ECS resources</a> in the <em>Amazon Elastic Container
Service Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_service_:_propagateTags">propagateTags</code></td>
<td><p>Specifies whether to propagate the tags from the task definition
to the task. If no value is specified, the tags aren't propagated. Tags
can only be propagated to the task during task creation. To add tags to
a task after task creation, use the <code>tag_resource</code> API
action.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_service_:_enableExecuteCommand">enableExecuteCommand</code></td>
<td><p>Determines whether the execute command functionality is turned on
for the service. If <code>true</code>, this enables execute command
functionality on all containers in the service tasks.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_service_:_serviceConnectConfiguration">serviceConnectConfiguration</code></td>
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

    svc$create_service(
      cluster = "string",
      serviceName = "string",
      taskDefinition = "string",
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
      desiredCount = 123,
      clientToken = "string",
      launchType = "EC2"|"FARGATE"|"EXTERNAL",
      capacityProviderStrategy = list(
        list(
          capacityProvider = "string",
          weight = 123,
          base = 123
        )
      ),
      platformVersion = "string",
      role = "string",
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
      enableECSManagedTags = TRUE|FALSE,
      propagateTags = "TASK_DEFINITION"|"SERVICE"|"NONE",
      enableExecuteCommand = TRUE|FALSE,
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
    # This example creates a service in your default region called
    # `ecs-simple-service`. The service uses the `hello_world` task
    # definition and it maintains 10 copies of that task.
    svc$create_service(
      desiredCount = 10L,
      serviceName = "ecs-simple-service",
      taskDefinition = "hello_world"
    )

    # This example creates a service in your default region called
    # `ecs-simple-service-elb`. The service uses the `ecs-demo` task
    # definition and it maintains 10 copies of that task. You must reference
    # an existing load balancer in the same region by its name.
    svc$create_service(
      desiredCount = 10L,
      loadBalancers = list(
        list(
          containerName = "simple-app",
          containerPort = 80L,
          loadBalancerName = "EC2Contai-EcsElast-15DCDAURT3ZO2"
        )
      ),
      role = "ecsServiceRole",
      serviceName = "ecs-simple-service-elb",
      taskDefinition = "console-sample-app-static"
    )

    ## End(Not run)
