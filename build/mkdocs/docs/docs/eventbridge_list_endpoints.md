<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_list_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the global endpoints associated with this account

### Description

List the global endpoints associated with this account. For more
information about global endpoints, see [Making applications
Regional-fault tolerant with global endpoints and event
replication](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html)
in the Amazon EventBridge User Guide..

### Usage

    eventbridge_list_endpoints(NamePrefix, HomeRegion, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_list_endpoints_:_NamePrefix">NamePrefix</code></td>
<td><p>A value that will return a subset of the endpoints associated
with this account. For example, <code>"NamePrefix": "ABC"</code> will
return all endpoints with "ABC" in the name.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_list_endpoints_:_HomeRegion">HomeRegion</code></td>
<td><p>The primary Region of the endpoints associated with this account.
For example <code>"HomeRegion": "us-east-1"</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="eventbridge_list_endpoints_:_NextToken">NextToken</code></td>
<td><p>If <code>nextToken</code> is returned, there are more results
available. The value of <code>nextToken</code> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged. Each
pagination token expires after 24 hours. Using an expired pagination
token will return an HTTP 400 InvalidToken error.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_list_endpoints_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results returned by the call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Endpoints = list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_endpoints(
      NamePrefix = "string",
      HomeRegion = "string",
      NextToken = "string",
      MaxResults = 123
    )
