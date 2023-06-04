<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_describe_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of this MSK configuration

### Description

Returns a description of this MSK configuration.

### Usage

    kafka_describe_configuration(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_describe_configuration_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies an MSK configuration and all of its revisions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      Description = "string",
      KafkaVersions = list(
        "string"
      ),
      LatestRevision = list(
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Description = "string",
        Revision = 123
      ),
      Name = "string",
      State = "ACTIVE"|"DELETING"|"DELETE_FAILED"
    )

### Request syntax

    svc$describe_configuration(
      Arn = "string"
    )
