<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_delete_launch_configuration_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a single Launch Configuration Template by ID

### Description

Deletes a single Launch Configuration Template by ID.

### Usage

    drs_delete_launch_configuration_template(launchConfigurationTemplateID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_delete_launch_configuration_template_:_launchConfigurationTemplateID">launchConfigurationTemplateID</code></td>
<td><p>[required] The ID of the Launch Configuration Template to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_launch_configuration_template(
      launchConfigurationTemplateID = "string"
    )
