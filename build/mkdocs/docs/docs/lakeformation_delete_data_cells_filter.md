<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_delete_data_cells_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a data cell filter

### Description

Deletes a data cell filter.

### Usage

    lakeformation_delete_data_cells_filter(TableCatalogId, DatabaseName,
      TableName, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_delete_data_cells_filter_:_TableCatalogId">TableCatalogId</code></td>
<td><p>The ID of the catalog to which the table belongs.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_delete_data_cells_filter_:_DatabaseName">DatabaseName</code></td>
<td><p>A database in the Glue Data Catalog.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_delete_data_cells_filter_:_TableName">TableName</code></td>
<td><p>A table in the database.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_delete_data_cells_filter_:_Name">Name</code></td>
<td><p>The name given by the user to the data filter cell.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_data_cells_filter(
      TableCatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      Name = "string"
    )
