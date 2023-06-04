<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_describe_destinations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all your destinations

### Description

Lists all your destinations. The results are ASCII-sorted by destination
name.

### Usage

    cloudwatchlogs_describe_destinations(DestinationNamePrefix, nextToken,
      limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_destinations_:_DestinationNamePrefix">DestinationNamePrefix</code></td>
<td><p>The prefix to match. If you don't specify a value, no prefix
filter is applied.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_destinations_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_destinations_:_limit">limit</code></td>
<td><p>The maximum number of items returned. If you don't specify a
value, the default maximum value of 50 items is used.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      destinations = list(
        list(
          destinationName = "string",
          targetArn = "string",
          roleArn = "string",
          accessPolicy = "string",
          arn = "string",
          creationTime = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_destinations(
      DestinationNamePrefix = "string",
      nextToken = "string",
      limit = 123
    )
