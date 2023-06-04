<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a previous export and the associated files stored in an S3 bucket

### Description

Removes a previous export and the associated files stored in an S3
bucket.

### Usage

    lexmodelsv2_delete_export(exportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_delete_export_:_exportId">exportId</code></td>
<td><p>[required] The unique identifier of the export to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      exportId = "string",
      exportStatus = "InProgress"|"Completed"|"Failed"|"Deleting"
    )

### Request syntax

    svc$delete_export(
      exportId = "string"
    )
