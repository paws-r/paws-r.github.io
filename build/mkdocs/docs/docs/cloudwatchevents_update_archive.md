<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_update_archive</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified archive

### Description

Updates the specified archive.

### Usage

    cloudwatchevents_update_archive(ArchiveName, Description, EventPattern,
      RetentionDays)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_update_archive_:_ArchiveName">ArchiveName</code></td>
<td><p>[required] The name of the archive to update.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_update_archive_:_Description">Description</code></td>
<td><p>The description for the archive.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_update_archive_:_EventPattern">EventPattern</code></td>
<td><p>The event pattern to use to filter events sent to the
archive.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_update_archive_:_RetentionDays">RetentionDays</code></td>
<td><p>The number of days to retain events in the archive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ArchiveArn = "string",
      State = "ENABLED"|"DISABLED"|"CREATING"|"UPDATING"|"CREATE_FAILED"|"UPDATE_FAILED",
      StateReason = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_archive(
      ArchiveName = "string",
      Description = "string",
      EventPattern = "string",
      RetentionDays = 123
    )
