<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_catalog_import_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the status of a migration operation

### Description

Retrieves the status of a migration operation.

### Usage

    glue_get_catalog_import_status(CatalogId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_catalog_import_status_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the catalog to migrate. Currently, this should be the
Amazon Web Services account ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ImportStatus = list(
        ImportCompleted = TRUE|FALSE,
        ImportTime = as.POSIXct(
          "2015-01-01"
        ),
        ImportedBy = "string"
      )
    )

### Request syntax

    svc$get_catalog_import_status(
      CatalogId = "string"
    )
