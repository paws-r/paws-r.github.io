<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_delete_snapshot_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a snapshot of a volume

### Description

Deletes a snapshot of a volume.

You can take snapshots of your gateway volumes on a scheduled or ad hoc
basis. This API action enables you to delete a snapshot schedule for a
volume. For more information, see [Backing up your
volumes](https://docs.aws.amazon.com/storagegateway/index.html). In the
`delete_snapshot_schedule` request, you identify the volume by providing
its Amazon Resource Name (ARN). This operation is only supported for
cached volume gateway types.

To list or delete a snapshot, you must use the Amazon EC2 API. For more
information, go to
[DescribeSnapshots](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html)
in the *Amazon Elastic Compute Cloud API Reference*.

### Usage

    storagegateway_delete_snapshot_schedule(VolumeARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_delete_snapshot_schedule_:_VolumeARN">VolumeARN</code></td>
<td><p>[required] The volume which snapshot schedule to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VolumeARN = "string"
    )

### Request syntax

    svc$delete_snapshot_schedule(
      VolumeARN = "string"
    )

### Examples

    ## Not run: 
    # This action enables you to delete a snapshot schedule for a volume.
    svc$delete_snapshot_schedule(
      VolumeARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12..."
    )

    ## End(Not run)
