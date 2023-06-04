<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_update_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the cluster

### Description

Updates the cluster.

### Usage

    ecs_update_cluster(cluster, settings, configuration,
      serviceConnectDefaults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_update_cluster_:_cluster">cluster</code></td>
<td><p>[required] The name of the cluster to modify the settings
for.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_update_cluster_:_settings">settings</code></td>
<td><p>The cluster settings for your cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_update_cluster_:_configuration">configuration</code></td>
<td><p>The execute command configuration for the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_cluster_:_serviceConnectDefaults">serviceConnectDefaults</code></td>
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

    svc$update_cluster(
      cluster = "string",
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
      serviceConnectDefaults = list(
        namespace = "string"
      )
    )
