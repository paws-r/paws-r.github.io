<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_batch_grant_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Batch operation to grant permissions to the principal

### Description

Batch operation to grant permissions to the principal.

### Usage

    lakeformation_batch_grant_permissions(CatalogId, Entries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_batch_grant_permissions_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_batch_grant_permissions_:_Entries">Entries</code></td>
<td><p>[required] A list of up to 20 entries for resource permissions to
be granted by batch operation to the principal.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Failures = list(
        list(
          RequestEntry = list(
            Id = "string",
            Principal = list(
              DataLakePrincipalIdentifier = "string"
            ),
            Resource = list(
              Catalog = list(),
              Database = list(
                CatalogId = "string",
                Name = "string"
              ),
              Table = list(
                CatalogId = "string",
                DatabaseName = "string",
                Name = "string",
                TableWildcard = list()
              ),
              TableWithColumns = list(
                CatalogId = "string",
                DatabaseName = "string",
                Name = "string",
                ColumnNames = list(
                  "string"
                ),
                ColumnWildcard = list(
                  ExcludedColumnNames = list(
                    "string"
                  )
                )
              ),
              DataLocation = list(
                CatalogId = "string",
                ResourceArn = "string"
              ),
              DataCellsFilter = list(
                TableCatalogId = "string",
                DatabaseName = "string",
                TableName = "string",
                Name = "string"
              ),
              LFTag = list(
                CatalogId = "string",
                TagKey = "string",
                TagValues = list(
                  "string"
                )
              ),
              LFTagPolicy = list(
                CatalogId = "string",
                ResourceType = "DATABASE"|"TABLE",
                Expression = list(
                  list(
                    TagKey = "string",
                    TagValues = list(
                      "string"
                    )
                  )
                )
              )
            ),
            Permissions = list(
              "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"DESCRIBE"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"|"CREATE_TAG"|"ASSOCIATE"
            ),
            PermissionsWithGrantOption = list(
              "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"DESCRIBE"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"|"CREATE_TAG"|"ASSOCIATE"
            )
          ),
          Error = list(
            ErrorCode = "string",
            ErrorMessage = "string"
          )
        )
      )
    )

### Request syntax

    svc$batch_grant_permissions(
      CatalogId = "string",
      Entries = list(
        list(
          Id = "string",
          Principal = list(
            DataLakePrincipalIdentifier = "string"
          ),
          Resource = list(
            Catalog = list(),
            Database = list(
              CatalogId = "string",
              Name = "string"
            ),
            Table = list(
              CatalogId = "string",
              DatabaseName = "string",
              Name = "string",
              TableWildcard = list()
            ),
            TableWithColumns = list(
              CatalogId = "string",
              DatabaseName = "string",
              Name = "string",
              ColumnNames = list(
                "string"
              ),
              ColumnWildcard = list(
                ExcludedColumnNames = list(
                  "string"
                )
              )
            ),
            DataLocation = list(
              CatalogId = "string",
              ResourceArn = "string"
            ),
            DataCellsFilter = list(
              TableCatalogId = "string",
              DatabaseName = "string",
              TableName = "string",
              Name = "string"
            ),
            LFTag = list(
              CatalogId = "string",
              TagKey = "string",
              TagValues = list(
                "string"
              )
            ),
            LFTagPolicy = list(
              CatalogId = "string",
              ResourceType = "DATABASE"|"TABLE",
              Expression = list(
                list(
                  TagKey = "string",
                  TagValues = list(
                    "string"
                  )
                )
              )
            )
          ),
          Permissions = list(
            "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"DESCRIBE"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"|"CREATE_TAG"|"ASSOCIATE"
          ),
          PermissionsWithGrantOption = list(
            "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"DESCRIBE"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"|"CREATE_TAG"|"ASSOCIATE"
          )
        )
      )
    )
