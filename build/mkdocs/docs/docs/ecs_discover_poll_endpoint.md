<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_discover_poll_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent

### Description

This action is only used by the Amazon ECS agent, and it is not intended
for use outside of the agent.

Returns an endpoint for the Amazon ECS agent to poll for updates.

### Usage

    ecs_discover_poll_endpoint(containerInstance, cluster)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ecs_discover_poll_endpoint_:_containerInstance">containerInstance</code></td>
<td><p>The container instance ID or full ARN of the container instance.
For more information about the ARN format, see <a
href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids">Amazon
Resource Name (ARN)</a> in the <em>Amazon ECS Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_discover_poll_endpoint_:_cluster">cluster</code></td>
<td><p>The short name or full Amazon Resource Name (ARN) of the cluster
that the container instance belongs to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      endpoint = "string",
      telemetryEndpoint = "string",
      serviceConnectEndpoint = "string"
    )

### Request syntax

    svc$discover_poll_endpoint(
      containerInstance = "string",
      cluster = "string"
    )
