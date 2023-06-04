<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_delete_template_sync_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a template sync configuration

### Description

Delete a template sync configuration.

### Usage

    proton_delete_template_sync_config(templateName, templateType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_delete_template_sync_config_:_templateName">templateName</code></td>
<td><p>[required] The template name.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_delete_template_sync_config_:_templateType">templateType</code></td>
<td><p>[required] The template type.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      templateSyncConfig = list(
        branch = "string",
        repositoryName = "string",
        repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
        subdirectory = "string",
        templateName = "string",
        templateType = "ENVIRONMENT"|"SERVICE"
      )
    )

### Request syntax

    svc$delete_template_sync_config(
      templateName = "string",
      templateType = "ENVIRONMENT"|"SERVICE"
    )
