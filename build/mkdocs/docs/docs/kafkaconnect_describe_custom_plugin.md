<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_describe_custom_plugin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A summary description of the custom plugin

### Description

A summary description of the custom plugin.

### Usage

    kafkaconnect_describe_custom_plugin(customPluginArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_describe_custom_plugin_:_customPluginArn">customPluginArn</code></td>
<td><p>[required] Returns information about a custom plugin.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      creationTime = as.POSIXct(
        "2015-01-01"
      ),
      customPluginArn = "string",
      customPluginState = "CREATING"|"CREATE_FAILED"|"ACTIVE"|"UPDATING"|"UPDATE_FAILED"|"DELETING",
      description = "string",
      latestRevision = list(
        contentType = "JAR"|"ZIP",
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        fileDescription = list(
          fileMd5 = "string",
          fileSize = 123
        ),
        location = list(
          s3Location = list(
            bucketArn = "string",
            fileKey = "string",
            objectVersion = "string"
          )
        ),
        revision = 123
      ),
      name = "string",
      stateDescription = list(
        code = "string",
        message = "string"
      )
    )

### Request syntax

    svc$describe_custom_plugin(
      customPluginArn = "string"
    )
