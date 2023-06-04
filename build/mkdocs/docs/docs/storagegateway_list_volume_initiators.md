<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_list_volume_initiators</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists iSCSI initiators that are connected to a volume

### Description

Lists iSCSI initiators that are connected to a volume. You can use this
operation to determine whether a volume is being used or not. This
operation is only supported in the cached volume and stored volume
gateway types.

### Usage

    storagegateway_list_volume_initiators(VolumeARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_list_volume_initiators_:_VolumeARN">VolumeARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the volume. Use the
<code>list_volumes</code> operation to return a list of gateway volumes
for the gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Initiators = list(
        "string"
      )
    )

### Request syntax

    svc$list_volume_initiators(
      VolumeARN = "string"
    )
