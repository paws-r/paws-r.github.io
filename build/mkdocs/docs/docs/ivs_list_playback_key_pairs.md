<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_list_playback_key_pairs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets summary information about playback key pairs

### Description

Gets summary information about playback key pairs. For more information,
see [Setting Up Private
Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
in the *Amazon IVS User Guide*.

### Usage

    ivs_list_playback_key_pairs(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivs_list_playback_key_pairs_:_maxResults">maxResults</code></td>
<td><p>Maximum number of key pairs to return. Default: your service
quota or 100, whichever is smaller.</p></td>
</tr>
<tr class="even">
<td><code
id="ivs_list_playback_key_pairs_:_nextToken">nextToken</code></td>
<td><p>The first key pair to retrieve. This is used for pagination; see
the <code>nextToken</code> response field.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      keyPairs = list(
        list(
          arn = "string",
          name = "string",
          tags = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_playback_key_pairs(
      maxResults = 123,
      nextToken = "string"
    )
