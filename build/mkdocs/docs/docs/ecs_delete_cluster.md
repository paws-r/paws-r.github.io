<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_delete_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified cluster

### Description

Deletes the specified cluster. The cluster transitions to the `INACTIVE`
state. Clusters with an `INACTIVE` status might remain discoverable in
your account for a period of time. However, this behavior is subject to
change in the future. We don't recommend that you rely on `INACTIVE`
clusters persisting.

You must deregister all container instances from this cluster before you
may delete it. You can list the container instances in a cluster with
`list_container_instances` and deregister them with
`deregister_container_instance`.

### Usage

    ecs_delete_cluster(cluster)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_delete_cluster_:_cluster">cluster</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the cluster to delete.</p></td>
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

    svc$delete_cluster(
      cluster = "string"
    )

### Examples

    ## Not run: 
    # This example deletes an empty cluster in your default region.
    svc$delete_cluster(
      cluster = "my_cluster"
    )

    ## End(Not run)
