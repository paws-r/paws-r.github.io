<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a connection from the Data Catalog

### Description

Deletes a connection from the Data Catalog.

### Usage

    glue_delete_connection(CatalogId, ConnectionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_connection_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which the connection resides. If
none is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_delete_connection_:_ConnectionName">ConnectionName</code></td>
<td><p>[required] The name of the connection to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_connection(
      CatalogId = "string",
      ConnectionName = "string"
    )
