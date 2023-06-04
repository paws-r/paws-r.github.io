<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>managedgrafana_describe_workspace_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the current configuration string for the given workspace

### Description

Gets the current configuration string for the given workspace.

### Usage

    managedgrafana_describe_workspace_configuration(workspaceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="managedgrafana_describe_workspace_configuration_:_workspaceId">workspaceId</code></td>
<td><p>[required] The ID of the workspace to get configuration
information for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      configuration = "string"
    )

### Request syntax

    svc$describe_workspace_configuration(
      workspaceId = "string"
    )
