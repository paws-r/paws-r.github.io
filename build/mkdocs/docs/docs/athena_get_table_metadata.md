<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_table_metadata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns table metadata for the specified catalog, database, and table

### Description

Returns table metadata for the specified catalog, database, and table.

### Usage

    athena_get_table_metadata(CatalogName, DatabaseName, TableName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_get_table_metadata_:_CatalogName">CatalogName</code></td>
<td><p>[required] The name of the data catalog that contains the
database and table metadata to return.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_get_table_metadata_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the database that contains the table
metadata to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_get_table_metadata_:_TableName">TableName</code></td>
<td><p>[required] The name of the table for which metadata is
returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TableMetadata = list(
        Name = "string",
        CreateTime = as.POSIXct(
          "2015-01-01"
        ),
        LastAccessTime = as.POSIXct(
          "2015-01-01"
        ),
        TableType = "string",
        Columns = list(
          list(
            Name = "string",
            Type = "string",
            Comment = "string"
          )
        ),
        PartitionKeys = list(
          list(
            Name = "string",
            Type = "string",
            Comment = "string"
          )
        ),
        Parameters = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_table_metadata(
      CatalogName = "string",
      DatabaseName = "string",
      TableName = "string"
    )
