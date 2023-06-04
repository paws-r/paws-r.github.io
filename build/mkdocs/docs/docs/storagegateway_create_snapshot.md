<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_create_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates a snapshot of a volume

### Description

Initiates a snapshot of a volume.

Storage Gateway provides the ability to back up point-in-time snapshots
of your data to Amazon Simple Storage (Amazon S3) for durable off-site
recovery, and also import the data to an Amazon Elastic Block Store
(EBS) volume in Amazon Elastic Compute Cloud (EC2). You can take
snapshots of your gateway volume on a scheduled or ad hoc basis. This
API enables you to take an ad hoc snapshot. For more information, see
[Editing a snapshot
schedule](https://docs.aws.amazon.com/storagegateway/index.html#SchedulingSnapshot).

In the `create_snapshot` request, you identify the volume by providing
its Amazon Resource Name (ARN). You must also provide description for
the snapshot. When Storage Gateway takes the snapshot of specified
volume, the snapshot and description appears in the Storage Gateway
console. In response, Storage Gateway returns you a snapshot ID. You can
use this snapshot ID to check the snapshot progress or later use it when
you want to create a volume from a snapshot. This operation is only
supported in stored and cached volume gateway type.

To list or delete a snapshot, you must use the Amazon EC2 API. For more
information, see
[DescribeSnapshots](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html)
or
[DeleteSnapshot](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteSnapshot.html)
in the *Amazon Elastic Compute Cloud API Reference*.

Volume and snapshot IDs are changing to a longer length ID format. For
more information, see the important note on the
[Welcome](https://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html)
page.

### Usage

    storagegateway_create_snapshot(VolumeARN, SnapshotDescription, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_create_snapshot_:_VolumeARN">VolumeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the volume. Use the
<code>list_volumes</code> operation to return a list of gateway
volumes.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_snapshot_:_SnapshotDescription">SnapshotDescription</code></td>
<td><p>[required] Textual description of the snapshot that appears in
the Amazon EC2 console, Elastic Block Store snapshots panel in the
<strong>Description</strong> field, and in the Storage Gateway snapshot
<strong>Details</strong> pane, <strong>Description</strong>
field.</p></td>
</tr>
<tr class="odd">
<td><code id="storagegateway_create_snapshot_:_Tags">Tags</code></td>
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
      VolumeARN = "string",
      SnapshotId = "string"
    )

### Request syntax

    svc$create_snapshot(
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
    # Initiates an ad-hoc snapshot of a gateway volume.
    svc$create_snapshot(
      SnapshotDescription = "My root volume snapshot as of 10/03/2017",
      VolumeARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12..."
    )

    ## End(Not run)
