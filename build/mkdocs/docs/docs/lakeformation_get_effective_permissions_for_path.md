<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_get_effective_permissions_for_path</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the Lake Formation permissions for a specified table or database resource located at a path in Amazon S3

### Description

Returns the Lake Formation permissions for a specified table or database
resource located at a path in Amazon S3.
`get_effective_permissions_for_path` will not return databases and
tables if the catalog is encrypted.

### Usage

    lakeformation_get_effective_permissions_for_path(CatalogId, ResourceArn,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_get_effective_permissions_for_path_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_effective_permissions_for_path_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource for
which you want to get permissions.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_get_effective_permissions_for_path_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is not the first call to retrieve
this list.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_get_effective_permissions_for_path_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Permissions = list(
        list(
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
          ),
          AdditionalDetails = list(
            ResourceShare = list(
              "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_effective_permissions_for_path(
      CatalogId = "string",
      ResourceArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
