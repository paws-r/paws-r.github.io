<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_describe_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the specified configuration

### Description

Returns information about the specified configuration.

### Usage

    mq_describe_configuration(ConfigurationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mq_describe_configuration_:_ConfigurationId">ConfigurationId</code></td>
<td><p>[required] The unique ID that Amazon MQ generates for the
configuration.</p></td>
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
      Description = "string",
      EngineType = "ACTIVEMQ"|"RABBITMQ",
      EngineVersion = "string",
      Id = "string",
      LatestRevision = list(
        Created = as.POSIXct(
          "2015-01-01"
        ),
        Description = "string",
        Revision = 123
      ),
      Name = "string",
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$describe_configuration(
      ConfigurationId = "string"
    )
