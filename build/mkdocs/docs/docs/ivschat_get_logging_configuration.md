<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_get_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the specified logging configuration

### Description

Gets the specified logging configuration.

### Usage

    ivschat_get_logging_configuration(identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ivschat_get_logging_configuration_:_identifier">identifier</code></td>
<td><p>[required] Identifier of the logging configuration to be
retrieved.</p></td>
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
      state = "CREATING"|"CREATE_FAILED"|"DELETING"|"DELETE_FAILED"|"UPDATING"|"UPDATE_FAILED"|"ACTIVE",
      tags = list(
        "string"
      ),
      updateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_logging_configuration(
      identifier = "string"
    )
