<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_database</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new database in a Data Catalog

### Description

Creates a new database in a Data Catalog.

### Usage

    glue_create_database(CatalogId, DatabaseInput, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_database_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog in which to create the database. If
none is provided, the Amazon Web Services account ID is used by
default.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_database_:_DatabaseInput">DatabaseInput</code></td>
<td><p>[required] The metadata for the database.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_database_:_Tags">Tags</code></td>
<td><p>The tags you assign to the database.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_database(
      CatalogId = "string",
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
      ),
      Tags = list(
        "string"
      )
    )
