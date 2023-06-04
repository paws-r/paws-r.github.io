<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_import</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about an import job started with the StartImport operation

### Description

Gets information about an import job started with the `start_import`
operation.

### Usage

    lexmodelbuildingservice_get_import(importId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_import_:_importId">importId</code></td>
<td><p>[required] The identifier of the import job information to
return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      resourceType = "BOT"|"INTENT"|"SLOT_TYPE",
      mergeStrategy = "OVERWRITE_LATEST"|"FAIL_ON_CONFLICT",
      importId = "string",
      importStatus = "IN_PROGRESS"|"COMPLETE"|"FAILED",
      failureReason = list(
        "string"
      ),
      createdDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_import(
      importId = "string"
    )
