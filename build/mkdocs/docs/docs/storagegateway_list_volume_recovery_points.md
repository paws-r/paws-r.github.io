<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_list_volume_recovery_points</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the recovery points for a specified gateway

### Description

Lists the recovery points for a specified gateway. This operation is
only supported in the cached volume gateway type.

Each cache volume has one recovery point. A volume recovery point is a
point in time at which all data of the volume is consistent and from
which you can create a snapshot or clone a new cached volume from a
source volume. To create a snapshot from a volume recovery point use the
`create_snapshot_from_volume_recovery_point` operation.

### Usage

    storagegateway_list_volume_recovery_points(GatewayARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_list_volume_recovery_points_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      VolumeRecoveryPointInfos = list(
        list(
          VolumeARN = "string",
          VolumeSizeInBytes = 123,
          VolumeUsageInBytes = 123,
          VolumeRecoveryPointTime = "string"
        )
      )
    )

### Request syntax

    svc$list_volume_recovery_points(
      GatewayARN = "string"
    )

### Examples

    ## Not run: 
    # Lists the recovery points for a specified gateway in which all data of
    # the volume is consistent and can be used to create a snapshot.
    svc$list_volume_recovery_points(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B"
    )

    ## End(Not run)
