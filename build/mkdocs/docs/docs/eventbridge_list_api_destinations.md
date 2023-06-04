<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_list_api_destinations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of API destination in the account in the current Region

### Description

Retrieves a list of API destination in the account in the current
Region.

### Usage

    eventbridge_list_api_destinations(NamePrefix, ConnectionArn, NextToken,
      Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_list_api_destinations_:_NamePrefix">NamePrefix</code></td>
<td><p>A name prefix to filter results returned. Only API destinations
with a name that starts with the prefix are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_list_api_destinations_:_ConnectionArn">ConnectionArn</code></td>
<td><p>The ARN of the connection specified for the API
destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="eventbridge_list_api_destinations_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_list_api_destinations_:_Limit">Limit</code></td>
<td><p>The maximum number of API destinations to include in the
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApiDestinations = list(
        list(
          ApiDestinationArn = "string",
          Name = "string",
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_api_destinations(
      NamePrefix = "string",
      ConnectionArn = "string",
      NextToken = "string",
      Limit = 123
    )
