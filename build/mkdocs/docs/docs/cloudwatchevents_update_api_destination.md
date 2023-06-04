<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_update_api_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an API destination

### Description

Updates an API destination.

### Usage

    cloudwatchevents_update_api_destination(Name, Description,
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
id="cloudwatchevents_update_api_destination_:_Name">Name</code></td>
<td><p>[required] The name of the API destination to update.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_update_api_destination_:_Description">Description</code></td>
<td><p>The name of the API destination to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_update_api_destination_:_ConnectionArn">ConnectionArn</code></td>
<td><p>The ARN of the connection to use for the API
destination.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_update_api_destination_:_InvocationEndpoint">InvocationEndpoint</code></td>
<td><p>The URL to the endpoint to use for the API destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_update_api_destination_:_HttpMethod">HttpMethod</code></td>
<td><p>The method to use for the API destination.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_update_api_destination_:_InvocationRateLimitPerSecond">InvocationRateLimitPerSecond</code></td>
<td><p>The maximum number of invocations per second to send to the API
destination.</p></td>
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

    svc$update_api_destination(
      Name = "string",
      Description = "string",
      ConnectionArn = "string",
      InvocationEndpoint = "string",
      HttpMethod = "POST"|"GET"|"HEAD"|"OPTIONS"|"PUT"|"PATCH"|"DELETE",
      InvocationRateLimitPerSecond = 123
    )
