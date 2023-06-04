<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing database definition in a Data Catalog

### Description

Updates an existing database definition in a Data Catalog.

### Usage

    glue_update_database(CatalogId, Name, DatabaseInput)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_update_database_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which the metadata database
resides. If none is provided, the Amazon Web Services account ID is used
by default.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_database_:_Name">Name</code></td>
<td><p>[required] The name of the database to update in the catalog. For
Hive compatibility, this is folded to lowercase.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_database_:_DatabaseInput">DatabaseInput</code></td>
<td><p>[required] A <code>DatabaseInput</code> object specifying the new
definition of the metadata database in the catalog.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_database(
      CatalogId = "string",
      Name = "string",
      DatabaseInput = list(
        Name = "string",
        Description = "string",
        LocationUri = "string",
        Parameters = list(
          "string"
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
        FederatedDatabase = list(
          Identifier = "string",
          ConnectionName = "string"
        )
      )
    )
