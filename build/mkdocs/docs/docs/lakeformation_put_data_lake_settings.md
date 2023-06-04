<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_put_data_lake_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the list of data lake administrators who have admin privileges on all resources managed by Lake Formation

### Description

Sets the list of data lake administrators who have admin privileges on
all resources managed by Lake Formation. For more information on admin
privileges, see [Granting Lake Formation
Permissions](https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html).

This API replaces the current list of data lake admins with the new list
being passed. To add an admin, fetch the current list and add the new
admin to that list and pass that list in this API.

### Usage

    lakeformation_put_data_lake_settings(CatalogId, DataLakeSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_put_data_lake_settings_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_put_data_lake_settings_:_DataLakeSettings">DataLakeSettings</code></td>
<td><p>[required] A structure representing a list of Lake Formation
principals designated as data lake administrators.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_data_lake_settings(
      CatalogId = "string",
      DataLakeSettings = list(
        DataLakeAdmins = list(
          list(
            DataLakePrincipalIdentifier = "string"
          )
        ),
        CreateDatabaseDefaultPermissions = list(
          list(
            Principal = list(
              DataLakePrincipalIdentifier = "string"
            ),
            Permissions = list(
              "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"DESCRIBE"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"|"CREATE_TAG"|"ASSOCIATE"
            )
          )
        ),
        CreateTableDefaultPermissions = list(
          list(
            Principal = list(
              DataLakePrincipalIdentifier = "string"
            ),
            Permissions = list(
              "ALL"|"SELECT"|"ALTER"|"DROP"|"DELETE"|"INSERT"|"DESCRIBE"|"CREATE_DATABASE"|"CREATE_TABLE"|"DATA_LOCATION_ACCESS"|"CREATE_TAG"|"ASSOCIATE"
            )
          )
        ),
        Parameters = list(
          "string"
        ),
        TrustedResourceOwners = list(
          "string"
        ),
        AllowExternalDataFiltering = TRUE|FALSE,
        ExternalDataFilteringAllowList = list(
          list(
            DataLakePrincipalIdentifier = "string"
          )
        ),
        AuthorizedSessionTagValueList = list(
          "string"
        )
      )
    )
