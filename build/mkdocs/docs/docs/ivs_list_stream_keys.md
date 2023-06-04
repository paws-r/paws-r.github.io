<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_list_stream_keys</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets summary information about stream keys for the specified channel

### Description

Gets summary information about stream keys for the specified channel.

### Usage

    ivs_list_stream_keys(channelArn, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_list_stream_keys_:_channelArn">channelArn</code></td>
<td><p>[required] Channel ARN used to filter the list.</p></td>
</tr>
<tr class="even">
<td><code id="ivs_list_stream_keys_:_maxResults">maxResults</code></td>
<td><p>Maximum number of streamKeys to return. Default: 1.</p></td>
</tr>
<tr class="odd">
<td><code id="ivs_list_stream_keys_:_nextToken">nextToken</code></td>
<td><p>The first stream key to retrieve. This is used for pagination;
see the <code>nextToken</code> response field.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      streamKeys = list(
        list(
          arn = "string",
          channelArn = "string",
          tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_stream_keys(
      channelArn = "string",
      maxResults = 123,
      nextToken = "string"
    )
