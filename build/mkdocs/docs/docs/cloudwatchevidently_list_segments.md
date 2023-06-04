<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_list_segments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of audience segments that you have created in your account in this Region

### Description

Returns a list of audience segments that you have created in your
account in this Region.

### Usage

    cloudwatchevidently_list_segments(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_list_segments_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the response. If you
omit this, the default of 50 is used.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_list_segments_:_nextToken">nextToken</code></td>
<td><p>The token to use when requesting the next set of results. You
received this token from a previous <code>list_segments</code>
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      segments = list(
        list(
          arn = "string",
          createdTime = as.POSIXct(
            "2015-01-01"
          ),
          description = "string",
          experimentCount = 123,
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          launchCount = 123,
          name = "string",
          pattern = "string",
          tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_segments(
      maxResults = 123,
      nextToken = "string"
    )
