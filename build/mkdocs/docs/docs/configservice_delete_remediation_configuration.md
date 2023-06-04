<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_remediation_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the remediation configuration

### Description

Deletes the remediation configuration.

### Usage

    configservice_delete_remediation_configuration(ConfigRuleName,
      ResourceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_remediation_configuration_:_ConfigRuleName">ConfigRuleName</code></td>
<td><p>[required] The name of the Config rule for which you want to
delete remediation configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_delete_remediation_configuration_:_ResourceType">ResourceType</code></td>
<td><p>The type of a resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_remediation_configuration(
      ConfigRuleName = "string",
      ResourceType = "string"
    )
