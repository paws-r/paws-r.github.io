<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_update_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update an existing endpoint

### Description

Update an existing endpoint. For more information about global
endpoints, see [Making applications Regional-fault tolerant with global
endpoints and event
replication](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html)
in the Amazon EventBridge User Guide..

### Usage

    eventbridge_update_endpoint(Name, Description, RoutingConfig,
      ReplicationConfig, EventBuses, RoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_update_endpoint_:_Name">Name</code></td>
<td><p>[required] The name of the endpoint you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_update_endpoint_:_Description">Description</code></td>
<td><p>A description for the endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="eventbridge_update_endpoint_:_RoutingConfig">RoutingConfig</code></td>
<td><p>Configure the routing policy, including the health check and
secondary Region.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_update_endpoint_:_ReplicationConfig">ReplicationConfig</code></td>
<td><p>Whether event replication was enabled or disabled by this
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="eventbridge_update_endpoint_:_EventBuses">EventBuses</code></td>
<td><p>Define event buses used for replication.</p></td>
</tr>
<tr class="even">
<td><code id="eventbridge_update_endpoint_:_RoleArn">RoleArn</code></td>
<td><p>The ARN of the role used by event replication for this
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Arn = "string",
      RoutingConfig = list(
        FailoverConfig = list(
          Primary = list(
            HealthCheck = "string"
          ),
          Secondary = list(
            Route = "string"
          )
        )
      ),
      ReplicationConfig = list(
        State = "ENABLED"|"DISABLED"
      ),
      EventBuses = list(
        list(
          EventBusArn = "string"
        )
      ),
      RoleArn = "string",
      EndpointId = "string",
      EndpointUrl = "string",
      State = "ACTIVE"|"CREATING"|"UPDATING"|"DELETING"|"CREATE_FAILED"|"UPDATE_FAILED"|"DELETE_FAILED"
    )

### Request syntax

    svc$update_endpoint(
      Name = "string",
      Description = "string",
      RoutingConfig = list(
        FailoverConfig = list(
          Primary = list(
            HealthCheck = "string"
          ),
          Secondary = list(
            Route = "string"
          )
        )
      ),
      ReplicationConfig = list(
        State = "ENABLED"|"DISABLED"
      ),
      EventBuses = list(
        list(
          EventBusArn = "string"
        )
      ),
      RoleArn = "string"
    )
