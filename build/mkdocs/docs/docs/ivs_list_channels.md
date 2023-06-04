<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_list_channels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets summary information about all channels in your account, in the Amazon Web Services region where the API request is processed

### Description

Gets summary information about all channels in your account, in the
Amazon Web Services region where the API request is processed. This list
can be filtered to match a specified name or recording-configuration
ARN. Filters are mutually exclusive and cannot be used together. If you
try to use both filters, you will get an error (409 ConflictException).

### Usage

    ivs_list_channels(filterByName, filterByRecordingConfigurationArn,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivs_list_channels_:_filterByName">filterByName</code></td>
<td><p>Filters the channel list to match the specified name.</p></td>
</tr>
<tr class="even">
<td><code
id="ivs_list_channels_:_filterByRecordingConfigurationArn">filterByRecordingConfigurationArn</code></td>
<td><p>Filters the channel list to match the specified
recording-configuration ARN.</p></td>
</tr>
<tr class="odd">
<td><code id="ivs_list_channels_:_maxResults">maxResults</code></td>
<td><p>Maximum number of channels to return. Default: 100.</p></td>
</tr>
<tr class="even">
<td><code id="ivs_list_channels_:_nextToken">nextToken</code></td>
<td><p>The first channel to retrieve. This is used for pagination; see
the <code>nextToken</code> response field.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      channels = list(
        list(
          arn = "string",
          authorized = TRUE|FALSE,
          insecureIngest = TRUE|FALSE,
          latencyMode = "NORMAL"|"LOW",
          name = "string",
          recordingConfigurationArn = "string",
          tags = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_channels(
      filterByName = "string",
      filterByRecordingConfigurationArn = "string",
      maxResults = 123,
      nextToken = "string"
    )
