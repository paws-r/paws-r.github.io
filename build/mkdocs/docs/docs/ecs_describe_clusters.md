<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_describe_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more of your clusters

### Description

Describes one or more of your clusters.

### Usage

    ecs_describe_clusters(clusters, include)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_describe_clusters_:_clusters">clusters</code></td>
<td><p>A list of up to 100 cluster names or full cluster Amazon Resource
Name (ARN) entries. If you do not specify a cluster, the default cluster
is assumed.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_describe_clusters_:_include">include</code></td>
<td><p>Determines whether to include additional information about the
clusters in the response. If this field is omitted, this information
isn't included.</p>
<p>If <code>ATTACHMENTS</code> is specified, the attachments for the
container instances or tasks within the cluster are included, for
example the capacity providers.</p>
<p>If <code>SETTINGS</code> is specified, the settings for the cluster
are included.</p>
<p>If <code>CONFIGURATIONS</code> is specified, the configuration for
the cluster is included.</p>
<p>If <code>STATISTICS</code> is specified, the task and service count
is included, separated by launch type.</p>
<p>If <code>TAGS</code> is specified, the metadata tags associated with
the cluster are included.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      clusters = list(
        list(
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
      ),
      failures = list(
        list(
          arn = "string",
          reason = "string",
          detail = "string"
        )
      )
    )

### Request syntax

    svc$describe_clusters(
      clusters = list(
        "string"
      ),
      include = list(
        "ATTACHMENTS"|"CONFIGURATIONS"|"SETTINGS"|"STATISTICS"|"TAGS"
      )
    )

### Examples

    ## Not run: 
    # This example provides a description of the specified cluster in your
    # default region.
    svc$describe_clusters(
      clusters = list(
        "default"
      )
    )

    ## End(Not run)
