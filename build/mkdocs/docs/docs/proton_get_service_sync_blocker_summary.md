<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_get_service_sync_blocker_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get detailed data for the service sync blocker summary

### Description

Get detailed data for the service sync blocker summary.

### Usage

    proton_get_service_sync_blocker_summary(serviceInstanceName,
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
id="proton_get_service_sync_blocker_summary_:_serviceInstanceName">serviceInstanceName</code></td>
<td><p>The name of the service instance that you want to get the service
sync blocker summary for. If given bothe the instance name and the
service name, only the instance is blocked.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_get_service_sync_blocker_summary_:_serviceName">serviceName</code></td>
<td><p>[required] The name of the service that you want to get the
service sync blocker summary for. If given only the service name, all
instances are blocked.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      serviceSyncBlockerSummary = list(
        latestBlockers = list(
          list(
            contexts = list(
              list(
                key = "string",
                value = "string"
              )
            ),
            createdAt = as.POSIXct(
              "2015-01-01"
            ),
            createdReason = "string",
            id = "string",
            resolvedAt = as.POSIXct(
              "2015-01-01"
            ),
            resolvedReason = "string",
            status = "ACTIVE"|"RESOLVED",
            type = "AUTOMATED"
          )
        ),
        serviceInstanceName = "string",
        serviceName = "string"
      )
    )

### Request syntax

    svc$get_service_sync_blocker_summary(
      serviceInstanceName = "string",
      serviceName = "string"
    )
