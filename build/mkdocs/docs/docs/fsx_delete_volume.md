<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_delete_volume</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS volume

### Description

Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS volume.

### Usage

    fsx_delete_volume(ClientRequestToken, VolumeId, OntapConfiguration,
      OpenZFSConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_delete_volume_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="fsx_delete_volume_:_VolumeId">VolumeId</code></td>
<td><p>[required] The ID of the volume that you are deleting.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_delete_volume_:_OntapConfiguration">OntapConfiguration</code></td>
<td><p>For Amazon FSx for ONTAP volumes, specify whether to take a final
backup of the volume and apply tags to the backup. To apply tags to the
backup, you must have the <code>fsx:TagResource</code>
permission.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_delete_volume_:_OpenZFSConfiguration">OpenZFSConfiguration</code></td>
<td><p>For Amazon FSx for OpenZFS volumes, specify whether to delete all
child volumes and snapshots.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VolumeId = "string",
      Lifecycle = "CREATING"|"CREATED"|"DELETING"|"FAILED"|"MISCONFIGURED"|"PENDING"|"AVAILABLE",
      OntapResponse = list(
        FinalBackupId = "string",
        FinalBackupTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_volume(
      ClientRequestToken = "string",
      VolumeId = "string",
      OntapConfiguration = list(
        SkipFinalBackup = TRUE|FALSE,
        FinalBackupTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      OpenZFSConfiguration = list(
        Options = list(
          "DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"
        )
      )
    )
