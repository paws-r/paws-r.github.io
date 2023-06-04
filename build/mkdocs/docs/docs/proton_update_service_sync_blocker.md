<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>proton_update_service_sync_blocker</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the service sync blocker by resolving it

### Description

Update the service sync blocker by resolving it.

### Usage

    proton_update_service_sync_blocker(id, resolvedReason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="proton_update_service_sync_blocker_:_id">id</code></td>
<td><p>[required] The ID of the service sync blocker.</p></td>
</tr>
<tr class="even">
<td><code
id="proton_update_service_sync_blocker_:_resolvedReason">resolvedReason</code></td>
<td><p>[required] The reason the service sync blocker was
resolved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      serviceInstanceName = "string",
      serviceName = "string",
      serviceSyncBlocker = list(
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
    )

### Request syntax

    svc$update_service_sync_blocker(
      id = "string",
      resolvedReason = "string"
    )
