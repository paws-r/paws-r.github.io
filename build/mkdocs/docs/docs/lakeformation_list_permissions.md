<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_list_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the principal permissions on the resource, filtered by the permissions of the caller

### Description

Returns a list of the principal permissions on the resource, filtered by
the permissions of the caller. For example, if you are granted an ALTER
permission, you are able to see only the principal permissions for
ALTER.

This operation returns only those permissions that have been explicitly
granted.

For information about permissions, see Security and Access Control to
Metadata and Data.

### Usage

    lakeformation_list_permissions(CatalogId, Principal, ResourceType,
      Resource, NextToken, MaxResults, IncludeRelated)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_list_permissions_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_permissions_:_Principal">Principal</code></td>
<td><p>Specifies a principal to filter the permissions
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_list_permissions_:_ResourceType">ResourceType</code></td>
<td><p>Specifies a resource type to filter the permissions
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_permissions_:_Resource">Resource</code></td>
<td><p>A resource where you will get a list of the principal
permissions.</p>
<p>This operation does not support getting privileges on a table with
columns. Instead, call this operation on the table, and the operation
returns the table and the table w columns.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_list_permissions_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is not the first call to retrieve
this list.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_list_permissions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_list_permissions_:_IncludeRelated">IncludeRelated</code></td>
<td><p>Indicates that related permissions should be included in the
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PrincipalResourcePermissions = list(
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

    svc$list_permissions(
      CatalogId = "string",
      Principal = list(
        DataLakePrincipalIdentifier = "string"
      ),
      ResourceType = "CATALOG"|"DATABASE"|"TABLE"|"DATA_LOCATION"|"LF_TAG"|"LF_TAG_POLICY"|"LF_TAG_POLICY_DATABASE"|"LF_TAG_POLICY_TABLE",
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
      NextToken = "string",
      MaxResults = 123,
      IncludeRelated = "string"
    )
