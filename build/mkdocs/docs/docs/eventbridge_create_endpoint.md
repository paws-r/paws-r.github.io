<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_create_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a global endpoint

### Description

Creates a global endpoint. Global endpoints improve your application's
availability by making it regional-fault tolerant. To do this, you
define a primary and secondary Region with event buses in each Region.
You also create a Amazon Route 53 health check that will tell
EventBridge to route events to the secondary Region when an "unhealthy"
state is encountered and events will be routed back to the primary
Region when the health check reports a "healthy" state.

### Usage

    eventbridge_create_endpoint(Name, Description, RoutingConfig,
      ReplicationConfig, EventBuses, RoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_create_endpoint_:_Name">Name</code></td>
<td><p>[required] The name of the global endpoint. For example,
<code>"Name":"us-east-2-custom_bus_A-endpoint"</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_create_endpoint_:_Description">Description</code></td>
<td><p>A description of the global endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="eventbridge_create_endpoint_:_RoutingConfig">RoutingConfig</code></td>
<td><p>[required] Configure the routing policy, including the health
check and secondary Region..</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_create_endpoint_:_ReplicationConfig">ReplicationConfig</code></td>
<td><p>Enable or disable event replication. The default state is
<code>ENABLED</code> which means you must supply a <code>RoleArn</code>.
If you don't have a <code>RoleArn</code> or you don't want event
replication enabled, set the state to <code>DISABLED</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="eventbridge_create_endpoint_:_EventBuses">EventBuses</code></td>
<td><p>[required] Define the event buses used.</p>
<p>The names of the event buses must be identical in each
Region.</p></td>
</tr>
<tr class="even">
<td><code id="eventbridge_create_endpoint_:_RoleArn">RoleArn</code></td>
<td><p>The ARN of the role used for replication.</p></td>
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
      State = "ACTIVE"|"CREATING"|"UPDATING"|"DELETING"|"CREATE_FAILED"|"UPDATE_FAILED"|"DELETE_FAILED"
    )

### Request syntax

    svc$create_endpoint(
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
