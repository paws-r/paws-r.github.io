<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_delete_archive</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified archive

### Description

Deletes the specified archive.

### Usage

    eventbridge_delete_archive(ArchiveName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_delete_archive_:_ArchiveName">ArchiveName</code></td>
<td><p>[required] The name of the archive to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_archive(
      ArchiveName = "string"
    )
