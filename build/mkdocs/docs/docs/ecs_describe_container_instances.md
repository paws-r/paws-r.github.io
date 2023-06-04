<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_describe_container_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more container instances

### Description

Describes one or more container instances. Returns metadata about each
container instance requested.

### Usage

    ecs_describe_container_instances(cluster, containerInstances, include)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_describe_container_instances_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that hosts the container instances to describe. If you do not specify a
cluster, the default cluster is assumed. This parameter is required if
the container instance or container instances you are describing were
launched in any cluster other than the default cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="ecs_describe_container_instances_:_containerInstances">containerInstances</code></td>
<td><p>[required] A list of up to 100 container instance IDs or full
Amazon Resource Name (ARN) entries.</p></td>
</tr>
<tr class="odd">
<td><code
id="ecs_describe_container_instances_:_include">include</code></td>
<td><p>Specifies whether you want to see the resource tags for the
container instance. If <code>TAGS</code> is specified, the tags are
included in the response. If <code>CONTAINER_INSTANCE_HEALTH</code> is
specified, the container instance health is included in the response. If
this field is omitted, tags and container instance health status aren't
included in the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      containerInstances = list(
        list(
          containerInstanceArn = "string",
          ec2InstanceId = "string",
          capacityProviderName = "string",
          version = 123,
          versionInfo = list(
            agentVersion = "string",
            agentHash = "string",
            dockerVersion = "string"
          ),
          remainingResources = list(
            list(
              name = "string",
              type = "string",
              doubleValue = 123.0,
              longValue = 123,
              integerValue = 123,
              stringSetValue = list(
                "string"
              )
            )
          ),
          registeredResources = list(
            list(
              name = "string",
              type = "string",
              doubleValue = 123.0,
              longValue = 123,
              integerValue = 123,
              stringSetValue = list(
                "string"
              )
            )
          ),
          status = "string",
          statusReason = "string",
          agentConnected = TRUE|FALSE,
          runningTasksCount = 123,
          pendingTasksCount = 123,
          agentUpdateStatus = "PENDING"|"STAGING"|"STAGED"|"UPDATING"|"UPDATED"|"FAILED",
          attributes = list(
            list(
              name = "string",
              value = "string",
              targetType = "container-instance",
              targetId = "string"
            )
          ),
          registeredAt = as.POSIXct(
            "2015-01-01"
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
          tags = list(
            list(
              key = "string",
              value = "string"
            )
          ),
          healthStatus = list(
            overallStatus = "OK"|"IMPAIRED"|"INSUFFICIENT_DATA"|"INITIALIZING",
            details = list(
              list(
                type = "CONTAINER_RUNTIME",
                status = "OK"|"IMPAIRED"|"INSUFFICIENT_DATA"|"INITIALIZING",
                lastUpdated = as.POSIXct(
                  "2015-01-01"
                ),
                lastStatusChange = as.POSIXct(
                  "2015-01-01"
                )
              )
            )
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

    svc$describe_container_instances(
      cluster = "string",
      containerInstances = list(
        "string"
      ),
      include = list(
        "TAGS"|"CONTAINER_INSTANCE_HEALTH"
      )
    )

### Examples

    ## Not run: 
    # This example provides a description of the specified container instance
    # in your default region, using the container instance UUID as an
    # identifier.
    svc$describe_container_instances(
      cluster = "default",
      containerInstances = list(
        "f2756532-8f13-4d53-87c9-aed50dc94cd7"
      )
    )

    ## End(Not run)
