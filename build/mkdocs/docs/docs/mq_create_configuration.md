<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_create_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new configuration for the specified configuration name

### Description

Creates a new configuration for the specified configuration name. Amazon
MQ uses the default configuration (the engine type and version).

### Usage

    mq_create_configuration(AuthenticationStrategy, EngineType,
      EngineVersion, Name, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mq_create_configuration_:_AuthenticationStrategy">AuthenticationStrategy</code></td>
<td><p>Optional. The authentication strategy associated with the
configuration. The default is SIMPLE.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_create_configuration_:_EngineType">EngineType</code></td>
<td><p>[required] Required. The type of broker engine. Currently, Amazon
MQ supports ACTIVEMQ and RABBITMQ.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_create_configuration_:_EngineVersion">EngineVersion</code></td>
<td><p>[required] Required. The broker engine's version. For a list of
supported engine versions, see <a
href="https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/">Supported
engines</a>.</p></td>
</tr>
<tr class="even">
<td><code id="mq_create_configuration_:_Name">Name</code></td>
<td><p>[required] Required. The name of the configuration. This value
can contain only alphanumeric characters, dashes, periods, underscores,
and tildes (- . _ ~). This value must be 1-150 characters long.</p></td>
</tr>
<tr class="odd">
<td><code id="mq_create_configuration_:_Tags">Tags</code></td>
<td><p>Create tags when creating the configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      AuthenticationStrategy = "SIMPLE"|"LDAP",
      Created = as.POSIXct(
        "2015-01-01"
      ),
      Id = "string",
      LatestRevision = list(
        Created = as.POSIXct(
          "2015-01-01"
        ),
        Description = "string",
        Revision = 123
      ),
      Name = "string"
    )

### Request syntax

    svc$create_configuration(
      AuthenticationStrategy = "SIMPLE"|"LDAP",
      EngineType = "ACTIVEMQ"|"RABBITMQ",
      EngineVersion = "string",
      Name = "string",
      Tags = list(
        "string"
      )
    )
