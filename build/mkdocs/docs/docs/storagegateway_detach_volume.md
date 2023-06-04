<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_detach_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disconnects a volume from an iSCSI connection and then detaches the volume from the specified gateway

### Description

Disconnects a volume from an iSCSI connection and then detaches the
volume from the specified gateway. Detaching and attaching a volume
enables you to recover your data from one gateway to a different gateway
without creating a snapshot. It also makes it easier to move your
volumes from an on-premises gateway to a gateway hosted on an Amazon EC2
instance. This operation is only supported in the volume gateway type.

### Usage

    storagegateway_detach_volume(VolumeARN, ForceDetach)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_detach_volume_:_VolumeARN">VolumeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the volume to detach
from the gateway.</p></td>
</tr>
<tr class="even">
<td><code
id="storagegateway_detach_volume_:_ForceDetach">ForceDetach</code></td>
<td><p>Set to <code>true</code> to forcibly remove the iSCSI connection
of the target volume and detach the volume. The default is
<code>false</code>. If this value is set to <code>false</code>, you must
manually disconnect the iSCSI connection from the target volume.</p>
<p>Valid Values: <code>true</code> | <code>false</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VolumeARN = "string"
    )

### Request syntax

    svc$detach_volume(
      VolumeARN = "string",
      ForceDetach = TRUE|FALSE
    )
