<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_get_recovery_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a recovery point

### Description

Returns information about a recovery point.

### Usage

    redshiftserverless_get_recovery_point(recoveryPointId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_get_recovery_point_:_recoveryPointId">recoveryPointId</code></td>
<td><p>[required] The unique identifier of the recovery point to return
information for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recoveryPoint = list(
        namespaceArn = "string",
        namespaceName = "string",
        recoveryPointCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        recoveryPointId = "string",
        totalSizeInMegaBytes = 123.0,
        workgroupName = "string"
      )
    )

### Request syntax

    svc$get_recovery_point(
      recoveryPointId = "string"
    )
