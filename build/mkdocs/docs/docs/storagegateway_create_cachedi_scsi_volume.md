<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_create_cachedi_scsi_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a cached volume on a specified cached volume gateway

### Description

Creates a cached volume on a specified cached volume gateway. This
operation is only supported in the cached volume gateway type.

Cache storage must be allocated to the gateway before you can create a
cached volume. Use the `add_cache` operation to add cache storage to a
gateway.

In the request, you must specify the gateway, size of the volume in
bytes, the iSCSI target name, an IP address on which to expose the
target, and a unique client token. In response, the gateway creates the
volume and returns information about it. This information includes the
volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN
that initiators can use to connect to the volume target.

Optionally, you can provide the ARN for an existing volume as the
`SourceVolumeARN` for this cached volume, which creates an exact copy of
the existing volume’s latest recovery point. The `VolumeSizeInBytes`
value must be equal to or larger than the size of the copied volume, in
bytes.

### Usage

    storagegateway_create_cachedi_scsi_volume(GatewayARN, VolumeSizeInBytes,
      SnapshotId, TargetName, SourceVolumeARN, NetworkInterfaceId,
      ClientToken, KMSEncrypted, KMSKey, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_create_cachedi_scsi_volume_:_GatewayARN">GatewayARN</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_cachedi_scsi_volume_:_VolumeSizeInBytes">VolumeSizeInBytes</code></td>
<td><p>[required] The size of the volume in bytes.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_cachedi_scsi_volume_:_SnapshotId">SnapshotId</code></td>
<td><p>The snapshot ID (e.g. "snap-1122aabb") of the snapshot to restore
as the new cached volume. Specify this field if you want to create the
iSCSI storage volume from a snapshot; otherwise, do not include this
field. To list snapshots for your account use <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html">DescribeSnapshots</a>
in the <em>Amazon Elastic Compute Cloud API Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_cachedi_scsi_volume_:_TargetName">TargetName</code></td>
<td><p>[required] The name of the iSCSI target used by an initiator to
connect to a volume and used as a suffix for the target ARN. For
example, specifying <code>TargetName</code> as <em>myvolume</em> results
in the target ARN of <code
style="white-space: pre;">⁠arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume⁠</code>.
The target name must be unique across all volumes on a gateway.</p>
<p>If you don't specify a value, Storage Gateway uses the value that was
previously used for this volume as the new target name.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_cachedi_scsi_volume_:_SourceVolumeARN">SourceVolumeARN</code></td>
<td><p>The ARN for an existing volume. Specifying this ARN makes the new
volume into an exact copy of the specified existing volume's latest
recovery point. The <code>VolumeSizeInBytes</code> value for this new
volume must be equal to or larger than the size of the existing volume,
in bytes.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_cachedi_scsi_volume_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The network interface of the gateway on which to
expose the iSCSI target. Only IPv4 addresses are accepted. Use
<code>describe_gateway_information</code> to get a list of the network
interfaces available on a gateway.</p>
<p>Valid Values: A valid IP address.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_cachedi_scsi_volume_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique identifier that you use to retry a request.
If you retry a request, use the same <code>ClientToken</code> you
specified in the initial request.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_cachedi_scsi_volume_:_KMSEncrypted">KMSEncrypted</code></td>
<td><p>Set to <code>true</code> to use Amazon S3 server-side encryption
with your own KMS key, or <code>false</code> to use a key managed by
Amazon S3. Optional.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_create_cachedi_scsi_volume_:_KMSKey">KMSKey</code></td>
<td><p>The Amazon Resource Name (ARN) of a symmetric customer master key
(CMK) used for Amazon S3 server-side encryption. Storage Gateway does
not support asymmetric CMKs. This value can only be set when
<code>KMSEncrypted</code> is <code>true</code>. Optional.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_create_cachedi_scsi_volume_:_Tags">Tags</code></td>
<td><p>A list of up to 50 tags that you can assign to a cached volume.
Each tag is a key-value pair.</p>
<p>Valid characters for key and value are letters, spaces, and numbers
that you can represent in UTF-8 format, and the following special
characters: + - = . _ : / @. The maximum length of a tag's key is 128
characters, and the maximum length for a tag's value is 256
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VolumeARN = "string",
      TargetARN = "string"
    )

### Request syntax

    svc$create_cachedi_scsi_volume(
      GatewayARN = "string",
      VolumeSizeInBytes = 123,
      SnapshotId = "string",
      TargetName = "string",
      SourceVolumeARN = "string",
      NetworkInterfaceId = "string",
      ClientToken = "string",
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
    # Creates a cached volume on a specified cached gateway.
    svc$create_cachedi_scsi_volume(
      ClientToken = "cachedvol112233",
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
      NetworkInterfaceId = "10.1.1.1",
      SnapshotId = "snap-f47b7b94",
      TargetName = "my-volume",
      VolumeSizeInBytes = 536870912000
    )

    ## End(Not run)
