<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_get_data_cells_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a data cells filter

### Description

Returns a data cells filter.

### Usage

    lakeformation_get_data_cells_filter(TableCatalogId, DatabaseName,
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
id="lakeformation_get_data_cells_filter_:_TableCatalogId">TableCatalogId</code></td>
<td><p>[required] The ID of the catalog to which the table
belongs.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_data_cells_filter_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] A database in the Glue Data Catalog.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_get_data_cells_filter_:_TableName">TableName</code></td>
<td><p>[required] A table in the database.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_data_cells_filter_:_Name">Name</code></td>
<td><p>[required] The name given by the user to the data filter
cell.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataCellsFilter = list(
        TableCatalogId = "string",
        DatabaseName = "string",
        TableName = "string",
        Name = "string",
        RowFilter = list(
          FilterExpression = "string",
          AllRowsWildcard = list()
        ),
        ColumnNames = list(
          "string"
        ),
        ColumnWildcard = list(
          ExcludedColumnNames = list(
            "string"
          )
        ),
        VersionId = "string"
      )
    )

### Request syntax

    svc$get_data_cells_filter(
      TableCatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      Name = "string"
    )
