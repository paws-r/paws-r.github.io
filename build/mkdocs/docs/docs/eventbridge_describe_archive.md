<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_describe_archive</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves details about an archive

### Description

Retrieves details about an archive.

### Usage

    eventbridge_describe_archive(ArchiveName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_describe_archive_:_ArchiveName">ArchiveName</code></td>
<td><p>[required] The name of the archive to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ArchiveArn = "string",
      ArchiveName = "string",
      EventSourceArn = "string",
      Description = "string",
      EventPattern = "string",
      State = "ENABLED"|"DISABLED"|"CREATING"|"UPDATING"|"CREATE_FAILED"|"UPDATE_FAILED",
      StateReason = "string",
      RetentionDays = 123,
      SizeBytes = 123,
      EventCount = 123,
      CreationTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_archive(
      ArchiveName = "string"
    )
