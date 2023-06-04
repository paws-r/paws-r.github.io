<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_delete_service_sync_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete the Proton Ops file

### Description

Delete the Proton Ops file.

### Usage

    proton_delete_service_sync_config(serviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_delete_service_sync_config_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the service that you want to delete the
service sync configuration for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      serviceSyncConfig = list(
        branch = "string",
        filePath = "string",
        repositoryName = "string",
        repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
        serviceName = "string"
      )
    )

### Request syntax

    svc$delete_service_sync_config(
      serviceName = "string"
    )
