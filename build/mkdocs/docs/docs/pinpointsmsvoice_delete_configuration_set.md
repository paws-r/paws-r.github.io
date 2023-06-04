<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoice_delete_configuration_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing configuration set

### Description

Deletes an existing configuration set.

### Usage

    pinpointsmsvoice_delete_configuration_set(ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoice_delete_configuration_set_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] ConfigurationSetName</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_configuration_set(
      ConfigurationSetName = "string"
    )
