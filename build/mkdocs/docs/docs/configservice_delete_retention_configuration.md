<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_retention_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the retention configuration

### Description

Deletes the retention configuration.

### Usage

    configservice_delete_retention_configuration(RetentionConfigurationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_retention_configuration_:_RetentionConfigurationName">RetentionConfigurationName</code></td>
<td><p>[required] The name of the retention configuration to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_retention_configuration(
      RetentionConfigurationName = "string"
    )
