<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_service_instance_sync_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the status of the synced service instance

### Description

Get the status of the synced service instance.

### Usage

    proton_get_service_instance_sync_status(serviceInstanceName,
      serviceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="proton_get_service_instance_sync_status_:_serviceInstanceName">serviceInstanceName</code></td>
<td><p>[required] The name of the service instance that you want the
sync status input for.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_get_service_instance_sync_status_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the service that the service instance
belongs to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      desiredState = list(
        branch = "string",
        directory = "string",
        repositoryName = "string",
        repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
        sha = "string"
      ),
      latestSuccessfulSync = list(
        events = list(
          list(
            event = "string",
            externalId = "string",
            time = as.POSIXct(
              "2015-01-01"
            ),
            type = "string"
          )
        ),
        initialRevision = list(
          branch = "string",
          directory = "string",
          repositoryName = "string",
          repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
          sha = "string"
        ),
        startedAt = as.POSIXct(
          "2015-01-01"
        ),
        status = "INITIATED"|"IN_PROGRESS"|"SUCCEEDED"|"FAILED",
        target = "string",
        targetRevision = list(
          branch = "string",
          directory = "string",
          repositoryName = "string",
          repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
          sha = "string"
        )
      ),
      latestSync = list(
        events = list(
          list(
            event = "string",
            externalId = "string",
            time = as.POSIXct(
              "2015-01-01"
            ),
            type = "string"
          )
        ),
        initialRevision = list(
          branch = "string",
          directory = "string",
          repositoryName = "string",
          repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
          sha = "string"
        ),
        startedAt = as.POSIXct(
          "2015-01-01"
        ),
        status = "INITIATED"|"IN_PROGRESS"|"SUCCEEDED"|"FAILED",
        target = "string",
        targetRevision = list(
          branch = "string",
          directory = "string",
          repositoryName = "string",
          repositoryProvider = "GITHUB"|"GITHUB_ENTERPRISE"|"BITBUCKET",
          sha = "string"
        )
      )
    )

### Request syntax

    svc$get_service_instance_sync_status(
      serviceInstanceName = "string",
      serviceName = "string"
    )
