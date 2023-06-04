<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_copy_backup_to_region</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copy an AWS CloudHSM cluster backup to a different region

### Description

Copy an AWS CloudHSM cluster backup to a different region.

### Usage

    cloudhsmv2_copy_backup_to_region(DestinationRegion, BackupId, TagList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsmv2_copy_backup_to_region_:_DestinationRegion">DestinationRegion</code></td>
<td><p>[required] The AWS region that will contain your copied CloudHSM
cluster backup.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsmv2_copy_backup_to_region_:_BackupId">BackupId</code></td>
<td><p>[required] The ID of the backup that will be copied to the
destination region.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudhsmv2_copy_backup_to_region_:_TagList">TagList</code></td>
<td><p>Tags to apply to the destination backup during creation. If you
specify tags, only these tags will be applied to the destination backup.
If you do not specify tags, the service copies tags from the source
backup to the destination backup.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DestinationBackup = list(
        CreateTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        SourceRegion = "string",
        SourceBackup = "string",
        SourceCluster = "string"
      )
    )

### Request syntax

    svc$copy_backup_to_region(
      DestinationRegion = "string",
      BackupId = "string",
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
