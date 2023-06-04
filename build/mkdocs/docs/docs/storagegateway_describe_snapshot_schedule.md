<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_snapshot_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the snapshot schedule for the specified gateway volume

### Description

Describes the snapshot schedule for the specified gateway volume. The
snapshot schedule information includes intervals at which snapshots are
automatically initiated on the volume. This operation is only supported
in the cached volume and stored volume types.

### Usage

    storagegateway_describe_snapshot_schedule(VolumeARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_snapshot_schedule_:_VolumeARN">VolumeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the volume. Use the
<code>list_volumes</code> operation to return a list of gateway
volumes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VolumeARN = "string",
      StartAt = 123,
      RecurrenceInHours = 123,
      Description = "string",
      Timezone = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$describe_snapshot_schedule(
      VolumeARN = "string"
    )

### Examples

    ## Not run: 
    # Describes the snapshot schedule for the specified gateway volume
    # including intervals at which snapshots are automatically initiated.
    svc$describe_snapshot_schedule(
      VolumeARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12..."
    )

    ## End(Not run)
