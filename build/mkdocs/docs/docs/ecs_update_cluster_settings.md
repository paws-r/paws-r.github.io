<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_update_cluster_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the settings to use for a cluster

### Description

Modifies the settings to use for a cluster.

### Usage

    ecs_update_cluster_settings(cluster, settings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_update_cluster_settings_:_cluster">cluster</code></td>
<td><p>[required] The name of the cluster to modify the settings
for.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_update_cluster_settings_:_settings">settings</code></td>
<td><p>[required] The setting to use by default for a cluster. This
parameter is used to turn on CloudWatch Container Insights for a
cluster. If this value is specified, it overrides the
<code>containerInsights</code> value set with
<code>put_account_setting</code> or
<code>put_account_setting_default</code>.</p>
<p>Currently, if you delete an existing cluster that does not have
Container Insights turned on, and then create a new cluster with the
same name with Container Insights tuned on, Container Insights will not
actually be turned on. If you want to preserve the same name for your
existing cluster and turn on Container Insights, you must wait 7 days
before you can re-create it.</p></td>
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

    svc$update_cluster_settings(
      cluster = "string",
      settings = list(
        list(
          name = "containerInsights",
          value = "string"
        )
      )
    )
