<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_list_streams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets summary information about live streams in your account, in the Amazon Web Services region where the API request is processed

### Description

Gets summary information about live streams in your account, in the
Amazon Web Services region where the API request is processed.

### Usage

    ivs_list_streams(filterBy, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_list_streams_:_filterBy">filterBy</code></td>
<td><p>Filters the stream list to match the specified
criterion.</p></td>
</tr>
<tr class="even">
<td><code id="ivs_list_streams_:_maxResults">maxResults</code></td>
<td><p>Maximum number of streams to return. Default: 100.</p></td>
</tr>
<tr class="odd">
<td><code id="ivs_list_streams_:_nextToken">nextToken</code></td>
<td><p>The first stream to retrieve. This is used for pagination; see
the <code>nextToken</code> response field.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      streams = list(
        list(
          channelArn = "string",
          health = "HEALTHY"|"STARVING"|"UNKNOWN",
          startTime = as.POSIXct(
            "2015-01-01"
          ),
          state = "LIVE"|"OFFLINE",
          streamId = "string",
          viewerCount = 123
        )
      )
    )

### Request syntax

    svc$list_streams(
      filterBy = list(
        health = "HEALTHY"|"STARVING"|"UNKNOWN"
      ),
      maxResults = 123,
      nextToken = "string"
    )
