<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_describe_api_destination</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves details about an API destination

### Description

Retrieves details about an API destination.

### Usage

    eventbridge_describe_api_destination(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_describe_api_destination_:_Name">Name</code></td>
<td><p>[required] The name of the API destination to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApiDestinationArn = "string",
      Name = "string",
      Description = "string",
      ApiDestinationState = "ACTIVE"|"INACTIVE",
      ConnectionArn = "string",
      InvocationEndpoint = "string",
      HttpMethod = "POST"|"GET"|"HEAD"|"OPTIONS"|"PUT"|"PATCH"|"DELETE",
      InvocationRateLimitPerSecond = 123,
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_api_destination(
      Name = "string"
    )
