<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_get_snapshot_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtains the manual snapshot limits for a directory

### Description

Obtains the manual snapshot limits for a directory.

### Usage

    directoryservice_get_snapshot_limits(DirectoryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_get_snapshot_limits_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] Contains the identifier of the directory to obtain the
limits for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SnapshotLimits = list(
        ManualSnapshotsLimit = 123,
        ManualSnapshotsCurrentCount = 123,
        ManualSnapshotsLimitReached = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_snapshot_limits(
      DirectoryId = "string"
    )
