<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_create_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a logging configuration that allows clients to store and record sent messages

### Description

Creates a logging configuration that allows clients to store and record
sent messages.

### Usage

    ivschat_create_logging_configuration(destinationConfiguration, name,
      tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivschat_create_logging_configuration_:_destinationConfiguration">destinationConfiguration</code></td>
<td><p>[required] A complex type that contains a destination
configuration for where chat content will be logged. There can be only
one type of destination (<code>cloudWatchLogs</code>,
<code>firehose</code>, or <code>s3</code>) in a
<code>destinationConfiguration</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ivschat_create_logging_configuration_:_name">name</code></td>
<td><p>Logging-configuration name. The value does not need to be
unique.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivschat_create_logging_configuration_:_tags">tags</code></td>
<td><p>Tags to attach to the resource. Array of maps, each of the form
<code>string:string (key:value)</code>. See <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
AWS Resources</a> for details, including restrictions that apply to tags
and "Tag naming limits and requirements"; Amazon IVS Chat has no
constraints on tags beyond what is documented there.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      arn = "string",
      createTime = as.POSIXct(
        "2015-01-01"
      ),
      destinationConfiguration = list(
        cloudWatchLogs = list(
          logGroupName = "string"
        ),
        firehose = list(
          deliveryStreamName = "string"
        ),
        s3 = list(
          bucketName = "string"
        )
      ),
      id = "string",
      name = "string",
      state = "ACTIVE",
      tags = list(
        "string"
      ),
      updateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_logging_configuration(
      destinationConfiguration = list(
        cloudWatchLogs = list(
          logGroupName = "string"
        ),
        firehose = list(
          deliveryStreamName = "string"
        ),
        s3 = list(
          bucketName = "string"
        )
      ),
      name = "string",
      tags = list(
        "string"
      )
    )
