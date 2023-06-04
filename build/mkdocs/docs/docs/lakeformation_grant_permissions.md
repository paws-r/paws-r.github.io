<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_grant_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3

### Description

Grants permissions to the principal to access metadata in the Data
Catalog and data organized in underlying data storage such as Amazon S3.

For information about permissions, see [Security and Access Control to
Metadata and
Data](https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html).

### Usage

    lakeformation_grant_permissions(CatalogId, Principal, Resource,
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
id="lakeformation_grant_permissions_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_grant_permissions_:_Principal">Principal</code></td>
<td><p>[required] The principal to be granted the permissions on the
resource. Supported principals are IAM users or IAM roles, and they are
defined by their principal type and their ARN.</p>
<p>Note that if you define a resource with a particular ARN, then later
delete, and recreate a resource with that same ARN, the resource
maintains the permissions already granted.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_grant_permissions_:_Resource">Resource</code></td>
<td><p>[required] The resource to which permissions are to be granted.
Resources in Lake Formation are the Data Catalog, databases, and
tables.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_grant_permissions_:_Permissions">Permissions</code></td>
<td><p>[required] The permissions granted to the principal on the
resource. Lake Formation defines privileges to grant and revoke access
to metadata in the Data Catalog and data organized in underlying data
storage such as Amazon S3. Lake Formation requires that each principal
be authorized to perform a specific task on Lake Formation
resources.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_grant_permissions_:_PermissionsWithGrantOption">PermissionsWithGrantOption</code></td>
<td><p>Indicates a list of the granted permissions that the principal
may pass to other users. These permissions may only be a subset of the
permissions granted in the <code>Privileges</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$grant_permissions(
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
