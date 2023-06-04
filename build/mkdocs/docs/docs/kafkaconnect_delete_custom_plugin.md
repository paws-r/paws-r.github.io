<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_delete_custom_plugin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a custom plugin

### Description

Deletes a custom plugin.

### Usage

    kafkaconnect_delete_custom_plugin(customPluginArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_delete_custom_plugin_:_customPluginArn">customPluginArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the custom plugin
that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      customPluginArn = "string",
      customPluginState = "CREATING"|"CREATE_FAILED"|"ACTIVE"|"UPDATING"|"UPDATE_FAILED"|"DELETING"
    )

### Request syntax

    svc$delete_custom_plugin(
      customPluginArn = "string"
    )
