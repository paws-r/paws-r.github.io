<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mq_describe_configuration_revision</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the specified configuration revision for the specified configuration

### Description

Returns the specified configuration revision for the specified
configuration.

### Usage

    mq_describe_configuration_revision(ConfigurationId,
      ConfigurationRevision)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mq_describe_configuration_revision_:_ConfigurationId">ConfigurationId</code></td>
<td><p>[required] The unique ID that Amazon MQ generates for the
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="mq_describe_configuration_revision_:_ConfigurationRevision">ConfigurationRevision</code></td>
<td><p>[required] The revision of the configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationId = "string",
      Created = as.POSIXct(
        "2015-01-01"
      ),
      Data = "string",
      Description = "string"
    )

### Request syntax

    svc$describe_configuration_revision(
      ConfigurationId = "string",
      ConfigurationRevision = "string"
    )
