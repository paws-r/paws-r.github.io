<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_describe_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the information about an existing global endpoint

### Description

Get the information about an existing global endpoint. For more
information about global endpoints, see [Making applications
Regional-fault tolerant with global endpoints and event
replication](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html)
in the Amazon EventBridge User Guide..

### Usage

    eventbridge_describe_endpoint(Name, HomeRegion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eventbridge_describe_endpoint_:_Name">Name</code></td>
<td><p>[required] The name of the endpoint you want to get information
about. For example,
<code>"Name":"us-east-2-custom_bus_A-endpoint"</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_describe_endpoint_:_HomeRegion">HomeRegion</code></td>
<td><p>The primary Region of the endpoint you want to get information
about. For example <code>"HomeRegion": "us-east-1"</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Description = "string",
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
      State = "ACTIVE"|"CREATING"|"UPDATING"|"DELETING"|"CREATE_FAILED"|"UPDATE_FAILED"|"DELETE_FAILED",
      StateReason = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_endpoint(
      Name = "string",
      HomeRegion = "string"
    )
