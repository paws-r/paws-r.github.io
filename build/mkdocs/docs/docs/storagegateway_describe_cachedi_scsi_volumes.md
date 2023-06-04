<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_describe_cachedi_scsi_volumes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of the gateway volumes specified in the request

### Description

Returns a description of the gateway volumes specified in the request.
This operation is only supported in the cached volume gateway types.

The list of gateway volumes in the request must be from one gateway. In
the response, Storage Gateway returns volume information sorted by
volume Amazon Resource Name (ARN).

### Usage

    storagegateway_describe_cachedi_scsi_volumes(VolumeARNs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_describe_cachedi_scsi_volumes_:_VolumeARNs">VolumeARNs</code></td>
<td><p>[required] An array of strings where each string represents the
Amazon Resource Name (ARN) of a cached volume. All of the specified
cached volumes must be from the same gateway. Use
<code>list_volumes</code> to get volume ARNs for a gateway.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CachediSCSIVolumes = list(
        list(
          VolumeARN = "string",
          VolumeId = "string",
          VolumeType = "string",
          VolumeStatus = "string",
          VolumeAttachmentStatus = "string",
          VolumeSizeInBytes = 123,
          VolumeProgress = 123.0,
          SourceSnapshotId = "string",
          VolumeiSCSIAttributes = list(
            TargetARN = "string",
            NetworkInterfaceId = "string",
            NetworkInterfacePort = 123,
            LunNumber = 123,
            ChapEnabled = TRUE|FALSE
          ),
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          VolumeUsedInBytes = 123,
          KMSKey = "string",
          TargetName = "string"
        )
      )
    )

### Request syntax

    svc$describe_cachedi_scsi_volumes(
      VolumeARNs = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # Returns a description of the gateway cached iSCSI volumes specified in
    # the request.
    svc$describe_cachedi_scsi_volumes(
      VolumeARNs = list(
        "arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABB"
      )
    )

    ## End(Not run)
