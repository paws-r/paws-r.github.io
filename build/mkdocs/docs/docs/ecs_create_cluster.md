<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_create_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon ECS cluster

### Description

Creates a new Amazon ECS cluster. By default, your account receives a
`default` cluster when you launch your first container instance.
However, you can create your own cluster with a unique name with the
`create_cluster` action.

When you call the `create_cluster` API operation, Amazon ECS attempts to
create the Amazon ECS service-linked role for your account. This is so
that it can manage required resources in other Amazon Web Services
services on your behalf. However, if the user that makes the call
doesn't have permissions to create the service-linked role, it isn't
created. For more information, see [Using service-linked roles for
Amazon
ECS](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html)
in the *Amazon Elastic Container Service Developer Guide*.

### Usage

    ecs_create_cluster(clusterName, tags, settings, configuration,
      capacityProviders, defaultCapacityProviderStrategy,
      serviceConnectDefaults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_create_cluster_:_clusterName">clusterName</code></td>
<td><p>The name of your cluster. If you don't specify a name for your
cluster, you create a cluster that's named <code>default</code>. Up to
255 letters (uppercase and lowercase), numbers, underscores, and hyphens
are allowed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_create_cluster_:_tags">tags</code></td>
<td><p>The metadata that you apply to the cluster to help you categorize
and organize them. Each tag consists of a key and an optional value. You
define both.</p>
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
<tr class="odd">
<td><code id="ecs_create_cluster_:_settings">settings</code></td>
<td><p>The setting to use when creating a cluster. This parameter is
used to turn on CloudWatch Container Insights for a cluster. If this
value is specified, it overrides the <code>containerInsights</code>
value set with <code>put_account_setting</code> or
<code>put_account_setting_default</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_cluster_:_configuration">configuration</code></td>
<td><p>The <code>execute</code> command configuration for the
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_cluster_:_capacityProviders">capacityProviders</code></td>
<td><p>The short name of one or more capacity providers to associate
with the cluster. A capacity provider must be associated with a cluster
before it can be included as part of the default capacity provider
strategy of the cluster or used in a capacity provider strategy when
calling the <code>create_service</code> or <code>run_task</code>
actions.</p>
<p>If specifying a capacity provider that uses an Auto Scaling group,
the capacity provider must be created but not associated with another
cluster. New Auto Scaling group capacity providers can be created with
the <code>create_capacity_provider</code> API operation.</p>
<p>To use a Fargate capacity provider, specify either the
<code>FARGATE</code> or <code>FARGATE_SPOT</code> capacity providers.
The Fargate capacity providers are available to all accounts and only
need to be associated with a cluster to be used.</p>
<p>The <a
href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/">PutCapacityProvider</a>
API operation is used to update the list of available capacity providers
for a cluster after the cluster is created.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_create_cluster_:_defaultCapacityProviderStrategy">defaultCapacityProviderStrategy</code></td>
<td><p>The capacity provider strategy to set as the default for the
cluster. After a default capacity provider strategy is set for a
cluster, when you call the <code>create_service</code> or
<code>run_task</code> APIs with no capacity provider strategy or launch
type specified, the default capacity provider strategy for the cluster
is used.</p>
<p>If a default capacity provider strategy isn't defined for a cluster
when it was created, it can be defined later with the
<code>put_cluster_capacity_providers</code> API operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_create_cluster_:_serviceConnectDefaults">serviceConnectDefaults</code></td>
<td><p>Use this parameter to set a default Service Connect namespace.
After you set a default Service Connect namespace, any new services with
Service Connect turned on that are created in the cluster are added as
client services in the namespace. This setting only applies to new
services that set the <code>enabled</code> parameter to
<code>true</code> in the <code>ServiceConnectConfiguration</code>. You
can set the namespace of each service individually in the
<code>ServiceConnectConfiguration</code> to override this default
parameter.</p>
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
      cluster = list(
        clusterArn = "string",
        clusterName = "string",
        configuration = list(
          executeCommandConfiguration = list(
            kmsKeyId = "string",
            logging = "NONE"|"DEFAULT"|"OVERRIDE",
            logConfiguration = list(
              cloudWatchLogGroupName = "string",
              cloudWatchEncryptionEnabled = TRUE|FALSE,
              s3BucketName = "string",
              s3EncryptionEnabled = TRUE|FALSE,
              s3KeyPrefix = "string"
            )
          )
        ),
        status = "string",
        registeredContainerInstancesCount = 123,
        runningTasksCount = 123,
        pendingTasksCount = 123,
        activeServicesCount = 123,
        statistics = list(
          list(
            name = "string",
            value = "string"
          )
        ),
        tags = list(
          list(
            key = "string",
            value = "string"
          )
        ),
        settings = list(
          list(
            name = "containerInsights",
            value = "string"
          )
        ),
        capacityProviders = list(
          "string"
        ),
        defaultCapacityProviderStrategy = list(
          list(
            capacityProvider = "string",
            weight = 123,
            base = 123
          )
        ),
        attachments = list(
          list(
            id = "string",
            type = "string",
            status = "string",
            details = list(
              list(
                name = "string",
                value = "string"
              )
            )
          )
        ),
        attachmentsStatus = "string",
        serviceConnectDefaults = list(
          namespace = "string"
        )
      )
    )

### Request syntax

    svc$create_cluster(
      clusterName = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      ),
      settings = list(
        list(
          name = "containerInsights",
          value = "string"
        )
      ),
      configuration = list(
        executeCommandConfiguration = list(
          kmsKeyId = "string",
          logging = "NONE"|"DEFAULT"|"OVERRIDE",
          logConfiguration = list(
            cloudWatchLogGroupName = "string",
            cloudWatchEncryptionEnabled = TRUE|FALSE,
            s3BucketName = "string",
            s3EncryptionEnabled = TRUE|FALSE,
            s3KeyPrefix = "string"
          )
        )
      ),
      capacityProviders = list(
        "string"
      ),
      defaultCapacityProviderStrategy = list(
        list(
          capacityProvider = "string",
          weight = 123,
          base = 123
        )
      ),
      serviceConnectDefaults = list(
        namespace = "string"
      )
    )

### Examples

    ## Not run: 
    # This example creates a cluster in your default region.
    svc$create_cluster(
      clusterName = "my_cluster"
    )

    ## End(Not run)
