<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_create_storedi_scsi_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a volume on a specified gateway

### Description

Creates a volume on a specified gateway. This operation is only
supported in the stored volume gateway type.

The size of the volume to create is inferred from the disk size. You can
choose to preserve existing data on the disk, create volume from an
existing snapshot, or create an empty volume. If you choose to create an
empty gateway volume, then any existing data on the disk is erased.

In the request, you must specify the gateway and the disk information on
which you are creating the volume. In response, the gateway creates the
volume and returns volume information such as the volume Amazon Resource
Name (ARN), its size, and the iSCSI target ARN that initiators can use
to connect to the volume target.

### Usage

    storagegateway_create_storedi_scsi_volume(GatewayARN, DiskId,
      SnapshotId, PreserveExistingData, TargetName, NetworkInterfaceId,
      KMSEncrypted, KMSKey, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_create_storedi_scsi_volume_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_storedi_scsi_volume_:_DiskId">DiskId</code></td>
<td><p>[required] The unique identifier for the gateway local disk that
is configured as a stored volume. Use <code>list_local_disks</code> to
list disk IDs for a gateway.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_storedi_scsi_volume_:_SnapshotId">SnapshotId</code></td>
<td><p>The snapshot ID (e.g., "snap-1122aabb") of the snapshot to
restore as the new stored volume. Specify this field if you want to
create the iSCSI storage volume from a snapshot; otherwise, do not
include this field. To list snapshots for your account use <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html">DescribeSnapshots</a>
in the <em>Amazon Elastic Compute Cloud API Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_storedi_scsi_volume_:_PreserveExistingData">PreserveExistingData</code></td>
<td><p>[required] Set to <code>true</code> if you want to preserve the
data on the local disk. Otherwise, set to <code>false</code> to create
an empty volume.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_storedi_scsi_volume_:_TargetName">TargetName</code></td>
<td><p>[required] The name of the iSCSI target used by an initiator to
connect to a volume and used as a suffix for the target ARN. For
example, specifying <code>TargetName</code> as <em>myvolume</em> results
in the target ARN of <code
style="white-space: pre;">⁠arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume⁠</code>.
The target name must be unique across all volumes on a gateway.</p>
<p>If you don't specify a value, Storage Gateway uses the value that was
previously used for this volume as the new target name.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_storedi_scsi_volume_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The network interface of the gateway on which to
expose the iSCSI target. Only IPv4 addresses are accepted. Use
<code>describe_gateway_information</code> to get a list of the network
interfaces available on a gateway.</p>
<p>Valid Values: A valid IP address.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_storedi_scsi_volume_:_KMSEncrypted">KMSEncrypted</code></td>
<td><p>Set to <code>true</code> to use Amazon S3 server-side encryption
with your own KMS key, or <code>false</code> to use a key managed by
Amazon S3. Optional.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_storedi_scsi_volume_:_KMSKey">KMSKey</code></td>
<td><p>The Amazon Resource Name (ARN) of a symmetric customer master key
(CMK) used for Amazon S3 server-side encryption. Storage Gateway does
not support asymmetric CMKs. This value can only be set when
<code>KMSEncrypted</code> is <code>true</code>. Optional.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_storedi_scsi_volume_:_Tags">Tags</code></td>
<td><p>A list of up to 50 tags that can be assigned to a stored volume.
Each tag is a key-value pair.</p>
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
      VolumeSizeInBytes = 123,
      TargetARN = "string"
    )

### Request syntax

    svc$create_storedi_scsi_volume(
      GatewayARN = "string",
      DiskId = "string",
      SnapshotId = "string",
      PreserveExistingData = TRUE|FALSE,
      TargetName = "string",
      NetworkInterfaceId = "string",
      KMSEncrypted = TRUE|FALSE,
      KMSKey = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # Creates a stored volume on a specified stored gateway.
    svc$create_storedi_scsi_volume(
      DiskId = "pci-0000:03:00.0-scsi-0:0:0:0",
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
      NetworkInterfaceId = "10.1.1.1",
      PreserveExistingData = TRUE,
      SnapshotId = "snap-f47b7b94",
      TargetName = "my-volume"
    )

    ## End(Not run)
