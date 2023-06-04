<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_import_catalog_to_glue</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports an existing Amazon Athena Data Catalog to Glue

### Description

Imports an existing Amazon Athena Data Catalog to Glue.

### Usage

    glue_import_catalog_to_glue(CatalogId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_import_catalog_to_glue_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the catalog to import. Currently, this should be the
Amazon Web Services account ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$import_catalog_to_glue(
      CatalogId = "string"
    )
