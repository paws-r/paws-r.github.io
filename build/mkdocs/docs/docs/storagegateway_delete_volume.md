<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_delete_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified storage volume that you previously created using the CreateCachediSCSIVolume or CreateStorediSCSIVolume API

### Description

Deletes the specified storage volume that you previously created using
the `create_cachedi_scsi_volume` or `create_storedi_scsi_volume` API.
This operation is only supported in the cached volume and stored volume
types. For stored volume gateways, the local disk that was configured as
the storage volume is not deleted. You can reuse the local disk to
create another storage volume.

Before you delete a volume, make sure there are no iSCSI connections to
the volume you are deleting. You should also make sure there is no
snapshot in progress. You can use the Amazon Elastic Compute Cloud
(Amazon EC2) API to query snapshots on the volume you are deleting and
check the snapshot status. For more information, go to
[DescribeSnapshots](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html)
in the *Amazon Elastic Compute Cloud API Reference*.

In the request, you must provide the Amazon Resource Name (ARN) of the
storage volume you want to delete.

### Usage

    storagegateway_delete_volume(VolumeARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_delete_volume_:_VolumeARN">VolumeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the volume. Use the
<code>list_volumes</code> operation to return a list of gateway
volumes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VolumeARN = "string"
    )

### Request syntax

    svc$delete_volume(
      VolumeARN = "string"
    )

### Examples

    ## Not run: 
    # Deletes the specified gateway volume that you previously created using
    # the CreateCachediSCSIVolume or CreateStorediSCSIVolume API.
    svc$delete_volume(
      VolumeARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12..."
    )

    ## End(Not run)
