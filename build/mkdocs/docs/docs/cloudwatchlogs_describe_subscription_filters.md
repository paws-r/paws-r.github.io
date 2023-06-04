<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_describe_subscription_filters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the subscription filters for the specified log group

### Description

Lists the subscription filters for the specified log group. You can list
all the subscription filters or filter the results by prefix. The
results are ASCII-sorted by filter name.

### Usage

    cloudwatchlogs_describe_subscription_filters(logGroupName,
      filterNamePrefix, nextToken, limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_subscription_filters_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_subscription_filters_:_filterNamePrefix">filterNamePrefix</code></td>
<td><p>The prefix to match. If you don't specify a value, no prefix
filter is applied.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchlogs_describe_subscription_filters_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_describe_subscription_filters_:_limit">limit</code></td>
<td><p>The maximum number of items returned. If you don't specify a
value, the default is up to 50 items.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      subscriptionFilters = list(
        list(
          filterName = "string",
          logGroupName = "string",
          filterPattern = "string",
          destinationArn = "string",
          roleArn = "string",
          distribution = "Random"|"ByLogStream",
          creationTime = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_subscription_filters(
      logGroupName = "string",
      filterNamePrefix = "string",
      nextToken = "string",
      limit = 123
    )
