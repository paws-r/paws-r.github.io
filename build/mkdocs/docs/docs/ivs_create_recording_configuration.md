<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivs_create_recording_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new recording configuration, used to enable recording to Amazon S3

### Description

Creates a new recording configuration, used to enable recording to
Amazon S3.

**Known issue:** In the us-east-1 region, if you use the Amazon Web
Services CLI to create a recording configuration, it returns success
even if the S3 bucket is in a different region. In this case, the
`state` of the recording configuration is `CREATE_FAILED` (instead of
`ACTIVE`). (In other regions, the CLI correctly returns failure if the
bucket is in a different region.)

**Workaround:** Ensure that your S3 bucket is in the same region as the
recording configuration. If you create a recording configuration in a
different region as your S3 bucket, delete that recording configuration
and create a new one with an S3 bucket from the correct region.

### Usage

    ivs_create_recording_configuration(destinationConfiguration, name,
      recordingReconnectWindowSeconds, tags, thumbnailConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivs_create_recording_configuration_:_destinationConfiguration">destinationConfiguration</code></td>
<td><p>[required] A complex type that contains a destination
configuration for where recorded video will be stored.</p></td>
</tr>
<tr class="even">
<td><code
id="ivs_create_recording_configuration_:_name">name</code></td>
<td><p>Recording-configuration name. The value does not need to be
unique.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivs_create_recording_configuration_:_recordingReconnectWindowSeconds">recordingReconnectWindowSeconds</code></td>
<td><p>If a broadcast disconnects and then reconnects within the
specified interval, the multiple streams will be considered a single
broadcast and merged together. Default: 0.</p></td>
</tr>
<tr class="even">
<td><code
id="ivs_create_recording_configuration_:_tags">tags</code></td>
<td><p>Array of 1-50 maps, each of the form
<code>string:string (key:value)</code>. See <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a> for more information, including
restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS has no service-specific constraints beyond
what is documented there.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivs_create_recording_configuration_:_thumbnailConfiguration">thumbnailConfiguration</code></td>
<td><p>A complex type that allows you to enable/disable the recording of
thumbnails for a live session and modify the interval at which
thumbnails are generated for the live session.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      )
    )

### Request syntax

    svc$create_recording_configuration(
      destinationConfiguration = list(
        s3 = list(
          bucketName = "string"
        )
      ),
      name = "string",
      recordingReconnectWindowSeconds = 123,
      tags = list(
        "string"
      ),
      thumbnailConfiguration = list(
        recordingMode = "DISABLED"|"INTERVAL",
        targetIntervalSeconds = 123
      )
    )
