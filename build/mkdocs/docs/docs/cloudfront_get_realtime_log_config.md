<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_realtime_log_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a real-time log configuration

### Description

Gets a real-time log configuration.

To get a real-time log configuration, you can provide the
configuration's name or its Amazon Resource Name (ARN). You must provide
at least one. If you provide both, CloudFront uses the name to identify
the real-time log configuration to get.

### Usage

    cloudfront_get_realtime_log_config(Name, ARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_get_realtime_log_config_:_Name">Name</code></td>
<td><p>The name of the real-time log configuration to get.</p></td>
</tr>
<tr class="even">
<td><code id="cloudfront_get_realtime_log_config_:_ARN">ARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the real-time log configuration
to get.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RealtimeLogConfig = list(
        ARN = "string",
        Name = "string",
        SamplingRate = 123,
        EndPoints = list(
          list(
            StreamType = "string",
            KinesisStreamConfig = list(
              RoleARN = "string",
              StreamARN = "string"
            )
          )
        ),
        Fields = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_realtime_log_config(
      Name = "string",
      ARN = "string"
    )
