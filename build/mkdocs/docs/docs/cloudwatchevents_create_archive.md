<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_create_archive</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an archive of events with the specified settings

### Description

Creates an archive of events with the specified settings. When you
create an archive, incoming events might not immediately start being
sent to the archive. Allow a short period of time for changes to take
effect. If you do not specify a pattern to filter events sent to the
archive, all events are sent to the archive except replayed events.
Replayed events are not sent to an archive.

### Usage

    cloudwatchevents_create_archive(ArchiveName, EventSourceArn,
      Description, EventPattern, RetentionDays)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_create_archive_:_ArchiveName">ArchiveName</code></td>
<td><p>[required] The name for the archive to create.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_create_archive_:_EventSourceArn">EventSourceArn</code></td>
<td><p>[required] The ARN of the event bus that sends events to the
archive.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_create_archive_:_Description">Description</code></td>
<td><p>A description for the archive.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevents_create_archive_:_EventPattern">EventPattern</code></td>
<td><p>An event pattern to use to filter events sent to the
archive.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevents_create_archive_:_RetentionDays">RetentionDays</code></td>
<td><p>The number of days to retain events for. Default value is 0. If
set to 0, events are retained indefinitely</p></td>
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

    svc$create_archive(
      ArchiveName = "string",
      EventSourceArn = "string",
      Description = "string",
      EventPattern = "string",
      RetentionDays = 123
    )
