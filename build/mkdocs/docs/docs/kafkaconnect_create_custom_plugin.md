<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_create_custom_plugin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom plugin using the specified properties

### Description

Creates a custom plugin using the specified properties.

### Usage

    kafkaconnect_create_custom_plugin(contentType, description, location,
      name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_create_custom_plugin_:_contentType">contentType</code></td>
<td><p>[required] The type of the plugin file.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_create_custom_plugin_:_description">description</code></td>
<td><p>A summary description of the custom plugin.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafkaconnect_create_custom_plugin_:_location">location</code></td>
<td><p>[required] Information about the location of a custom
plugin.</p></td>
</tr>
<tr class="even">
<td><code id="kafkaconnect_create_custom_plugin_:_name">name</code></td>
<td><p>[required] The name of the custom plugin.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      customPluginArn = "string",
      customPluginState = "CREATING"|"CREATE_FAILED"|"ACTIVE"|"UPDATING"|"UPDATE_FAILED"|"DELETING",
      name = "string",
      revision = 123
    )

### Request syntax

    svc$create_custom_plugin(
      contentType = "JAR"|"ZIP",
      description = "string",
      location = list(
        s3Location = list(
          bucketArn = "string",
          fileKey = "string",
          objectVersion = "string"
        )
      ),
      name = "string"
    )
