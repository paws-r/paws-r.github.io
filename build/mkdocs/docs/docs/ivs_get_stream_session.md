<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_get_stream_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets metadata on a specified stream

### Description

Gets metadata on a specified stream.

### Usage

    ivs_get_stream_session(channelArn, streamId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivs_get_stream_session_:_channelArn">channelArn</code></td>
<td><p>[required] ARN of the channel resource</p></td>
</tr>
<tr class="even">
<td><code id="ivs_get_stream_session_:_streamId">streamId</code></td>
<td><p>Unique identifier for a live or previously live stream in the
specified channel. If no <code>streamId</code> is provided, this returns
the most recent stream session for the channel, if it exists.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      streamSession = list(
        channel = list(
          arn = "string",
          authorized = TRUE|FALSE,
          ingestEndpoint = "string",
          insecureIngest = TRUE|FALSE,
          latencyMode = "NORMAL"|"LOW",
          name = "string",
          playbackUrl = "string",
          recordingConfigurationArn = "string",
          tags = list(
            "string"
          ),
          type = "BASIC"|"STANDARD"
        ),
        endTime = as.POSIXct(
          "2015-01-01"
        ),
        ingestConfiguration = list(
          audio = list(
            channels = 123,
            codec = "string",
            sampleRate = 123,
            targetBitrate = 123
          ),
          video = list(
            avcLevel = "string",
            avcProfile = "string",
            codec = "string",
            encoder = "string",
            targetBitrate = 123,
            targetFramerate = 123,
            videoHeight = 123,
            videoWidth = 123
          )
        ),
        recordingConfiguration = list(
          arn = "string",
          destinationConfiguration = list(
            s3 = list(
              bucketName = "string"
            )
          ),
          name = "string",
          recordingReconnectWindowSeconds = 123,
          state = "CREATING"|"CREATE_FAILED"|"ACTIVE",
          tags = list(
            "string"
          ),
          thumbnailConfiguration = list(
            recordingMode = "DISABLED"|"INTERVAL",
            targetIntervalSeconds = 123
          )
        ),
        startTime = as.POSIXct(
          "2015-01-01"
        ),
        streamId = "string",
        truncatedEvents = list(
          list(
            eventTime = as.POSIXct(
              "2015-01-01"
            ),
            name = "string",
            type = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_stream_session(
      channelArn = "string",
      streamId = "string"
    )
