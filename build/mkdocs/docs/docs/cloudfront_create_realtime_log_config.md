<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_realtime_log_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a real-time log configuration

### Description

Creates a real-time log configuration.

After you create a real-time log configuration, you can attach it to one
or more cache behaviors to send real-time log data to the specified
Amazon Kinesis data stream.

For more information about real-time log configurations, see [Real-time
logs](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html)
in the *Amazon CloudFront Developer Guide*.

### Usage

    cloudfront_create_realtime_log_config(EndPoints, Fields, Name,
      SamplingRate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_realtime_log_config_:_EndPoints">EndPoints</code></td>
<td><p>[required] Contains information about the Amazon Kinesis data
stream where you are sending real-time log data.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_create_realtime_log_config_:_Fields">Fields</code></td>
<td><p>[required] A list of fields to include in each real-time log
record.</p>
<p>For more information about fields, see <a
href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields">Real-time
log configuration fields</a> in the <em>Amazon CloudFront Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_create_realtime_log_config_:_Name">Name</code></td>
<td><p>[required] A unique name to identify this real-time log
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_create_realtime_log_config_:_SamplingRate">SamplingRate</code></td>
<td><p>[required] The sampling rate for this real-time log
configuration. The sampling rate determines the percentage of viewer
requests that are represented in the real-time log data. You must
provide an integer between 1 and 100, inclusive.</p></td>
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

    svc$create_realtime_log_config(
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
      ),
      Name = "string",
      SamplingRate = 123
    )
