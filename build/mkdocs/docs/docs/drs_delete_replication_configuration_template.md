<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_delete_replication_configuration_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a single Replication Configuration Template by ID

### Description

Deletes a single Replication Configuration Template by ID

### Usage

    drs_delete_replication_configuration_template(
      replicationConfigurationTemplateID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_delete_replication_configuration_template_:_replicationConfigurationTemplateID">replicationConfigurationTemplateID</code></td>
<td><p>[required] The ID of the Replication Configuration Template to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_replication_configuration_template(
      replicationConfigurationTemplateID = "string"
    )
