<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_update_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an MSK configuration

### Description

Updates an MSK configuration.

### Usage

    kafka_update_configuration(Arn, Description, ServerProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_update_configuration_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_configuration_:_Description">Description</code></td>
<td><p>The description of the configuration revision.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_configuration_:_ServerProperties">ServerProperties</code></td>
<td><p>[required] Contents of the server.properties file. When using the
API, you must ensure that the contents of the file are base64 encoded.
When using the AWS Management Console, the SDK, or the AWS CLI, the
contents of server.properties can be in plaintext.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      LatestRevision = list(
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Description = "string",
        Revision = 123
      )
    )

### Request syntax

    svc$update_configuration(
      Arn = "string",
      Description = "string",
      ServerProperties = raw
    )
