<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_describe_configuration_revision</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of this revision of the configuration

### Description

Returns a description of this revision of the configuration.

### Usage

    kafka_describe_configuration_revision(Arn, Revision)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_describe_configuration_revision_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies an MSK configuration and all of its revisions.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_describe_configuration_revision_:_Revision">Revision</code></td>
<td><p>[required] A string that uniquely identifies a revision of an MSK
configuration.</p></td>
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
      Revision = 123,
      ServerProperties = raw
    )

### Request syntax

    svc$describe_configuration_revision(
      Arn = "string",
      Revision = 123
    )
