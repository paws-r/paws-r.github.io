<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_list_volumes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the iSCSI stored volumes of a gateway

### Description

Lists the iSCSI stored volumes of a gateway. Results are sorted by
volume ARN. The response includes only the volume ARNs. If you want
additional volume information, use the `describe_storedi_scsi_volumes`
or the `describe_cachedi_scsi_volumes` API.

The operation supports pagination. By default, the operation returns a
maximum of up to 100 volumes. You can optionally specify the `Limit`
field in the body to limit the number of volumes in the response. If the
number of volumes returned in the response is truncated, the response
includes a Marker field. You can use this Marker value in your
subsequent request to retrieve the next set of volumes. This operation
is only supported in the cached volume and stored volume gateway types.

### Usage

    storagegateway_list_volumes(GatewayARN, Marker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_list_volumes_:_GatewayARN">GatewayARN</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="storagegateway_list_volumes_:_Marker">Marker</code></td>
<td><p>A string that indicates the position at which to begin the
returned list of volumes. Obtain the marker from the response of a
previous List iSCSI Volumes request.</p></td>
</tr>
<tr class="odd">
<td><code id="storagegateway_list_volumes_:_Limit">Limit</code></td>
<td><p>Specifies that the list of volumes returned be limited to the
specified number of items.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GatewayARN = "string",
      Marker = "string",
      VolumeInfos = list(
        list(
          VolumeARN = "string",
          VolumeId = "string",
          GatewayARN = "string",
          GatewayId = "string",
          VolumeType = "string",
          VolumeSizeInBytes = 123,
          VolumeAttachmentStatus = "string"
        )
      )
    )

### Request syntax

    svc$list_volumes(
      GatewayARN = "string",
      Marker = "string",
      Limit = 123
    )

### Examples

    ## Not run: 
    # Lists the iSCSI stored volumes of a gateway. Results are sorted by
    # volume ARN up to a maximum of 100 volumes.
    svc$list_volumes(
      GatewayARN = "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B",
      Limit = 2L,
      Marker = "1"
    )

    ## End(Not run)
