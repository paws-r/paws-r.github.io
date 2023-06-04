<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_list_data_cells_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the data cell filters on a table

### Description

Lists all the data cell filters on a table.

### Usage

    lakeformation_list_data_cells_filter(Table, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_list_data_cells_filter_:_Table">Table</code></td>
<td><p>A table in the Glue Data Catalog.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_data_cells_filter_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_list_data_cells_filter_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of the response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataCellsFilters = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_data_cells_filter(
      Table = list(
        CatalogId = "string",
        DatabaseName = "string",
        Name = "string",
        TableWildcard = list()
      ),
      NextToken = "string",
      MaxResults = 123
    )
