<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_stop_backup_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attempts to cancel a job to create a one-time backup of a resource

### Description

Attempts to cancel a job to create a one-time backup of a resource.

This action is not supported for the following services: Amazon FSx for
Windows File Server, Amazon FSx for Lustre, FSx for ONTAP , Amazon FSx
for OpenZFS, Amazon DocumentDB (with MongoDB compatibility), Amazon RDS,
Amazon Aurora, and Amazon Neptune.

### Usage

    backup_stop_backup_job(BackupJobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_stop_backup_job_:_BackupJobId">BackupJobId</code></td>
<td><p>[required] Uniquely identifies a request to Backup to back up a
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_backup_job(
      BackupJobId = "string"
    )
