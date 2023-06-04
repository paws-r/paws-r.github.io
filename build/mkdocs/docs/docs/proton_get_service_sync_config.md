<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_service_sync_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get detailed information for the service sync configuration

### Description

Get detailed information for the service sync configuration.

### Usage

    proton_get_service_sync_config(serviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_get_service_sync_config_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the service that you want to get the
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

    svc$get_service_sync_config(
      serviceName = "string"
    )
