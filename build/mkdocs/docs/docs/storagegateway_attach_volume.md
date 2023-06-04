<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_attach_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Connects a volume to an iSCSI connection and then attaches the volume to the specified gateway

### Description

Connects a volume to an iSCSI connection and then attaches the volume to
the specified gateway. Detaching and attaching a volume enables you to
recover your data from one gateway to a different gateway without
creating a snapshot. It also makes it easier to move your volumes from
an on-premises gateway to a gateway hosted on an Amazon EC2 instance.

### Usage

    storagegateway_attach_volume(GatewayARN, TargetName, VolumeARN,
      NetworkInterfaceId, DiskId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_attach_volume_:_GatewayARN">GatewayARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the gateway that you
want to attach the volume to.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_attach_volume_:_TargetName">TargetName</code></td>
<td><p>The name of the iSCSI target used by an initiator to connect to a
volume and used as a suffix for the target ARN. For example, specifying
<code>TargetName</code> as <em>myvolume</em> results in the target ARN
of <code
style="white-space: pre;">⁠arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume⁠</code>.
The target name must be unique across all volumes on a gateway.</p>
<p>If you don't specify a value, Storage Gateway uses the value that was
previously used for this volume as the new target name.</p></td>
</tr>
<tr class="odd">
<td><code
id="storagegateway_attach_volume_:_VolumeARN">VolumeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the volume to attach
to the specified gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_attach_volume_:_NetworkInterfaceId">NetworkInterfaceId</code></td>
<td><p>[required] The network interface of the gateway on which to
expose the iSCSI target. Only IPv4 addresses are accepted. Use
<code>describe_gateway_information</code> to get a list of the network
interfaces available on a gateway.</p>
<p>Valid Values: A valid IP address.</p></td>
</tr>
<tr class="odd">
<td><code id="storagegateway_attach_volume_:_DiskId">DiskId</code></td>
<td><p>The unique device ID or other distinguishing data that identifies
the local disk used to create the volume. This value is only required
when you are attaching a stored volume.</p></td>
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

    svc$attach_volume(
      GatewayARN = "string",
      TargetName = "string",
      VolumeARN = "string",
      NetworkInterfaceId = "string",
      DiskId = "string"
    )
