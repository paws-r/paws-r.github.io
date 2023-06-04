<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_revoke_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Revokes permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3

### Description

Revokes permissions to the principal to access metadata in the Data
Catalog and data organized in underlying data storage such as Amazon S3.

### Usage

    lakeformation_revoke_permissions(CatalogId, Principal, Resource,
      Permissions, PermissionsWithGrantOption)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_revoke_permissions_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_revoke_permissions_:_Principal">Principal</code></td>
<td><p>[required] The principal to be revoked permissions on the
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_revoke_permissions_:_Resource">Resource</code></td>
<td><p>[required] The resource to which permissions are to be
revoked.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_revoke_permissions_:_Permissions">Permissions</code></td>
<td><p>[required] The permissions revoked to the principal on the
resource. For information about permissions, see <a
href="https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html">Security
and Access Control to Metadata and Data</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_revoke_permissions_:_PermissionsWithGrantOption">PermissionsWithGrantOption</code></td>
<td><p>Indicates a list of permissions for which to revoke the grant
option allowing the principal to pass permissions to other
principals.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$revoke_permissions(
      CatalogId = "string",
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
