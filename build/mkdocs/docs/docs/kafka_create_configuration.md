<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_create_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new MSK configuration

### Description

Creates a new MSK configuration.

### Usage

    kafka_create_configuration(Description, KafkaVersions, Name,
      ServerProperties)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_create_configuration_:_Description">Description</code></td>
<td><p>The description of the configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_create_configuration_:_KafkaVersions">KafkaVersions</code></td>
<td><p>The versions of Apache Kafka with which you can use this MSK
configuration.</p></td>
</tr>
<tr class="odd">
<td><code id="kafka_create_configuration_:_Name">Name</code></td>
<td><p>[required] The name of the configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_create_configuration_:_ServerProperties">ServerProperties</code></td>
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
      CreationTime = as.POSIXct(
        "2015-01-01"
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

    svc$create_configuration(
      Description = "string",
      KafkaVersions = list(
        "string"
      ),
      Name = "string",
      ServerProperties = raw
    )
