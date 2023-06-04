<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_create_api_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an API destination, which is an HTTP invocation endpoint configured as a target for events

### Description

Creates an API destination, which is an HTTP invocation endpoint
configured as a target for events.

### Usage

    cloudwatchevents_create_api_destination(Name, Description,
      ConnectionArn, InvocationEndpoint, HttpMethod,
      InvocationRateLimitPerSecond)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_create_api_destination_:_Name">Name</code></td>
<td><p>[required] The name for the API destination to create.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_create_api_destination_:_Description">Description</code></td>
<td><p>A description for the API destination to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_create_api_destination_:_ConnectionArn">ConnectionArn</code></td>
<td><p>[required] The ARN of the connection to use for the API
destination. The destination endpoint must support the authorization
type specified for the connection.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_create_api_destination_:_InvocationEndpoint">InvocationEndpoint</code></td>
<td><p>[required] The URL to the HTTP invocation endpoint for the API
destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_create_api_destination_:_HttpMethod">HttpMethod</code></td>
<td><p>[required] The method to use for the request to the HTTP
invocation endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_create_api_destination_:_InvocationRateLimitPerSecond">InvocationRateLimitPerSecond</code></td>
<td><p>The maximum number of requests per second to send to the HTTP
invocation endpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApiDestinationArn = "string",
      ApiDestinationState = "ACTIVE"|"INACTIVE",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_api_destination(
      Name = "string",
      Description = "string",
      ConnectionArn = "string",
      InvocationEndpoint = "string",
      HttpMethod = "POST"|"GET"|"HEAD"|"OPTIONS"|"PUT"|"PATCH"|"DELETE",
      InvocationRateLimitPerSecond = 123
    )
