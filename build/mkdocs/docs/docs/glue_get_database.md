<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the definition of a specified database

### Description

Retrieves the definition of a specified database.

### Usage

    glue_get_database(CatalogId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_database_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which the database resides. If none
is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_database_:_Name">Name</code></td>
<td><p>[required] The name of the database to retrieve. For Hive
compatibility, this should be all lowercase.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Database = list(
        Name = "string",
        Description = "string",
        LocationUri = "string",
        Parameters = list(
          "string"
        ),
        CreateTime = as.POSIXct(
          "2015-01-01"
        ),
        CreateTableDefaultPermissions = list(
          list(
            Principal = list(
              DataLakePrincipalIdentifier = "string"
            ),
            Permissions = list(
              "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"
            )
          )
        ),
        TargetDatabase = list(
          CatalogId = "string",
          DatabaseName = "string"
        ),
        CatalogId = "string",
        FederatedDatabase = list(
          Identifier = "string",
          ConnectionName = "string"
        )
      )
    )

### Request syntax

    svc$get_database(
      CatalogId = "string",
      Name = "string"
    )
