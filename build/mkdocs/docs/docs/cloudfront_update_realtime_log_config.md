<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_update_realtime_log_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a real-time log configuration

### Description

Updates a real-time log configuration.

When you update a real-time log configuration, all the parameters are
updated with the values provided in the request. You cannot update some
parameters independent of others. To update a real-time log
configuration:

1.  Call `get_realtime_log_config` to get the current real-time log
    configuration.

2.  Locally modify the parameters in the real-time log configuration
    that you want to update.

3.  Call this API (`update_realtime_log_config`) by providing the entire
    real-time log configuration, including the parameters that you
    modified and those that you didn't.

You cannot update a real-time log configuration's `Name` or `ARN`.

### Usage

    cloudfront_update_realtime_log_config(EndPoints, Fields, Name, ARN,
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
id="cloudfront_update_realtime_log_config_:_EndPoints">EndPoints</code></td>
<td><p>Contains information about the Amazon Kinesis data stream where
you are sending real-time log data.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_update_realtime_log_config_:_Fields">Fields</code></td>
<td><p>A list of fields to include in each real-time log record.</p>
<p>For more information about fields, see <a
href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields">Real-time
log configuration fields</a> in the <em>Amazon CloudFront Developer
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_realtime_log_config_:_Name">Name</code></td>
<td><p>The name for this real-time log configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_update_realtime_log_config_:_ARN">ARN</code></td>
<td><p>The Amazon Resource Name (ARN) for this real-time log
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudfront_update_realtime_log_config_:_SamplingRate">SamplingRate</code></td>
<td><p>The sampling rate for this real-time log configuration. The
sampling rate determines the percentage of viewer requests that are
represented in the real-time log data. You must provide an integer
between 1 and 100, inclusive.</p></td>
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

    svc$update_realtime_log_config(
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
      ARN = "string",
      SamplingRate = 123
    )
