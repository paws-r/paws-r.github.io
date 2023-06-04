<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a database object for the specified database and data catalog

### Description

Returns a database object for the specified database and data catalog.

### Usage

    athena_get_database(CatalogName, DatabaseName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_get_database_:_CatalogName">CatalogName</code></td>
<td><p>[required] The name of the data catalog that contains the
database to return.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_get_database_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The name of the database to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Database = list(
        Name = "string",
        Description = "string",
        Parameters = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_database(
      CatalogName = "string",
      DatabaseName = "string"
    )
