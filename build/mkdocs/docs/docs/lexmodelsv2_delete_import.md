<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_import</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a previous import and the associated file stored in an S3 bucket

### Description

Removes a previous import and the associated file stored in an S3
bucket.

### Usage

    lexmodelsv2_delete_import(importId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_delete_import_:_importId">importId</code></td>
<td><p>[required] The unique identifier of the import to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      importId = "string",
      importStatus = "InProgress"|"Completed"|"Failed"|"Deleting"
    )

### Request syntax

    svc$delete_import(
      importId = "string"
    )
