<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_update_workspace_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration string for the given workspace

### Description

Updates the configuration string for the given workspace

### Usage

    managedgrafana_update_workspace_configuration(configuration,
      workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_update_workspace_configuration_:_configuration">configuration</code></td>
<td><p>[required] The new configuration string for the workspace. For
more information about the format and configuration options available,
see <a
href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-configure-workspace.html">Working
in your Grafana workspace</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="managedgrafana_update_workspace_configuration_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to update.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_workspace_configuration(
      configuration = "string",
      workspaceId = "string"
    )
