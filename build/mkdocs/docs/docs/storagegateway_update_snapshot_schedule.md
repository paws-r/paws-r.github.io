<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_update_snapshot_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a snapshot schedule configured for a gateway volume

### Description

Updates a snapshot schedule configured for a gateway volume. This
operation is only supported in the cached volume and stored volume
gateway types.

The default snapshot schedule for volume is once every 24 hours,
starting at the creation time of the volume. You can use this API to
change the snapshot schedule configured for the volume.

In the request you must identify the gateway volume whose snapshot
schedule you want to update, and the schedule information, including
when you want the snapshot to begin on a day and the frequency (in
hours) of snapshots.

### Usage

    storagegateway_update_snapshot_schedule(VolumeARN, StartAt,
      RecurrenceInHours, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_update_snapshot_schedule_:_VolumeARN">VolumeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the volume. Use the
<code>list_volumes</code> operation to return a list of gateway
volumes.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_snapshot_schedule_:_StartAt">StartAt</code></td>
<td><p>[required] The hour of the day at which the snapshot schedule
begins represented as <em>hh</em>, where <em>hh</em> is the hour (0 to
23). The hour of the day is in the time zone of the gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_snapshot_schedule_:_RecurrenceInHours">RecurrenceInHours</code></td>
<td><p>[required] Frequency of snapshots. Specify the number of hours
between snapshots.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_update_snapshot_schedule_:_Description">Description</code></td>
<td><p>Optional description of the snapshot that overwrites the existing
description.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_update_snapshot_schedule_:_Tags">Tags</code></td>
<td><p>A list of up to 50 tags that can be assigned to a snapshot. Each
tag is a key-value pair.</p>
<p>Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: + -
= . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VolumeARN = "string"
    )

### Request syntax

    svc$update_snapshot_schedule(
      VolumeARN = "string",
      StartAt = 123,
      RecurrenceInHours = 123,
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # Updates a snapshot schedule configured for a gateway volume.
    svc$update_snapshot_schedule(
      Description = "Hourly snapshot",
      RecurrenceInHours = 1L,
      StartAt = 0L,
      VolumeARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12..."
    )

    ## End(Not run)
