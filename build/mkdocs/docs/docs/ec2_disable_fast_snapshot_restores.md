<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disable_fast_snapshot_restores</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables fast snapshot restores for the specified snapshots in the specified Availability Zones

### Description

Disables fast snapshot restores for the specified snapshots in the
specified Availability Zones.

### Usage

    ec2_disable_fast_snapshot_restores(AvailabilityZones, SourceSnapshotIds,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disable_fast_snapshot_restores_:_AvailabilityZones">AvailabilityZones</code></td>
<td><p>[required] One or more Availability Zones. For example, <code
style="white-space: pre;">⁠us-east-2a⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_disable_fast_snapshot_restores_:_SourceSnapshotIds">SourceSnapshotIds</code></td>
<td><p>[required] The IDs of one or more snapshots. For example, <code
style="white-space: pre;">⁠snap-1234567890abcdef0⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_disable_fast_snapshot_restores_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Successful = list(
        list(
          SnapshotId = "string",
          AvailabilityZone = "string",
          State = "enabling"|"optimizing"|"enabled"|"disabling"|"disabled",
          StateTransitionReason = "string",
          OwnerId = "string",
          OwnerAlias = "string",
          EnablingTime = as.POSIXct(
            "2015-01-01"
          ),
          OptimizingTime = as.POSIXct(
            "2015-01-01"
          ),
          EnabledTime = as.POSIXct(
            "2015-01-01"
          ),
          DisablingTime = as.POSIXct(
            "2015-01-01"
          ),
          DisabledTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      Unsuccessful = list(
        list(
          SnapshotId = "string",
          FastSnapshotRestoreStateErrors = list(
            list(
              AvailabilityZone = "string",
              Error = list(
                Code = "string",
                Message = "string"
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$disable_fast_snapshot_restores(
      AvailabilityZones = list(
        "string"
      ),
      SourceSnapshotIds = list(
        "string"
      ),
      DryRun = TRUE|FALSE
    )
