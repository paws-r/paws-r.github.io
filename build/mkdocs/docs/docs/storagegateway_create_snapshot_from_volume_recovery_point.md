<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_create_snapshot_from_volume_recovery_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates a snapshot of a gateway from a volume recovery point

### Description

Initiates a snapshot of a gateway from a volume recovery point. This
operation is only supported in the cached volume gateway type.

A volume recovery point is a point in time at which all data of the
volume is consistent and from which you can create a snapshot. To get a
list of volume recovery point for cached volume gateway, use
`list_volume_recovery_points`.

In the `create_snapshot_from_volume_recovery_point` request, you
identify the volume by providing its Amazon Resource Name (ARN). You
must also provide a description for the snapshot. When the gateway takes
a snapshot of the specified volume, the snapshot and its description
appear in the Storage Gateway console. In response, the gateway returns
you a snapshot ID. You can use this snapshot ID to check the snapshot
progress or later use it when you want to create a volume from a
snapshot.

To list or delete a snapshot, you must use the Amazon EC2 API. For more
information, see
[DescribeSnapshots](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html)
or
[DeleteSnapshot](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html)
in the *Amazon Elastic Compute Cloud API Reference*.

### Usage

    storagegateway_create_snapshot_from_volume_recovery_point(VolumeARN,
      SnapshotDescription, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_create_snapshot_from_volume_recovery_point_:_VolumeARN">VolumeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the iSCSI volume
target. Use the <code>describe_storedi_scsi_volumes</code> operation to
return to retrieve the TargetARN for specified VolumeARN.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_snapshot_from_volume_recovery_point_:_SnapshotDescription">SnapshotDescription</code></td>
<td><p>[required] Textual description of the snapshot that appears in
the Amazon EC2 console, Elastic Block Store snapshots panel in the
<strong>Description</strong> field, and in the Storage Gateway snapshot
<strong>Details</strong> pane, <strong>Description</strong>
field.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_snapshot_from_volume_recovery_point_:_Tags">Tags</code></td>
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
      SnapshotId = "string",
      VolumeARN = "string",
      VolumeRecoveryPointTime = "string"
    )

### Request syntax

    svc$create_snapshot_from_volume_recovery_point(
      VolumeARN = "string",
      SnapshotDescription = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # Initiates a snapshot of a gateway from a volume recovery point.
    svc$create_snapshot_from_volume_recovery_point(
      SnapshotDescription = "My root volume snapshot as of 2017-06-30T10:10:10.000Z",
      VolumeARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12..."
    )

    ## End(Not run)
