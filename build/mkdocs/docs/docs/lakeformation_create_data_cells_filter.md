<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_create_data_cells_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a data cell filter to allow one to grant access to certain columns on certain rows

### Description

Creates a data cell filter to allow one to grant access to certain
columns on certain rows.

### Usage

    lakeformation_create_data_cells_filter(TableData)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_create_data_cells_filter_:_TableData">TableData</code></td>
<td><p>[required] A <code>DataCellsFilter</code> structure containing
information about the data cells filter.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_data_cells_filter(
      TableData = list(
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
