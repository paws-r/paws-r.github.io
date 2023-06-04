<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoice_create_configuration_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a new configuration set

### Description

Create a new configuration set. After you create the configuration set,
you can add one or more event destinations to it.

### Usage

    pinpointsmsvoice_create_configuration_set(ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoice_create_configuration_set_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>The name that you want to give the configuration set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_configuration_set(
      ConfigurationSetName = "string"
    )
