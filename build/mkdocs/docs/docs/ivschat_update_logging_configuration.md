<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_update_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a specified logging configuration

### Description

Updates a specified logging configuration.

### Usage

    ivschat_update_logging_configuration(destinationConfiguration,
      identifier, name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivschat_update_logging_configuration_:_destinationConfiguration">destinationConfiguration</code></td>
<td><p>A complex type that contains a destination configuration for
where chat content will be logged. There can be only one type of
destination (<code>cloudWatchLogs</code>, <code>firehose</code>, or
<code>s3</code>) in a <code>destinationConfiguration</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ivschat_update_logging_configuration_:_identifier">identifier</code></td>
<td><p>[required] Identifier of the logging configuration to be
updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="ivschat_update_logging_configuration_:_name">name</code></td>
<td><p>Logging-configuration name. The value does not need to be
unique.</p></td>
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

    svc$update_logging_configuration(
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
      identifier = "string",
      name = "string"
    )
