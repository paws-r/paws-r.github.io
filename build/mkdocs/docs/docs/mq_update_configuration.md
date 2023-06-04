<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_update_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified configuration

### Description

Updates the specified configuration.

### Usage

    mq_update_configuration(ConfigurationId, Data, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mq_update_configuration_:_ConfigurationId">ConfigurationId</code></td>
<td><p>[required] The unique ID that Amazon MQ generates for the
configuration.</p></td>
</tr>
<tr class="even">
<td><code id="mq_update_configuration_:_Data">Data</code></td>
<td><p>[required] Required. The base64-encoded XML
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="mq_update_configuration_:_Description">Description</code></td>
<td><p>The description of the configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
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
      Name = "string",
      Warnings = list(
        list(
          AttributeName = "string",
          ElementName = "string",
          Reason = "DISALLOWED_ELEMENT_REMOVED"|"DISALLOWED_ATTRIBUTE_REMOVED"|"INVALID_ATTRIBUTE_VALUE_REMOVED"
        )
      )
    )

### Request syntax

    svc$update_configuration(
      ConfigurationId = "string",
      Data = "string",
      Description = "string"
    )
