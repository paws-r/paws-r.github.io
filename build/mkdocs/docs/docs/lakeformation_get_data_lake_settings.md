<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_get_data_lake_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the list of the data lake administrators of a Lake Formation-managed data lake

### Description

Retrieves the list of the data lake administrators of a Lake
Formation-managed data lake.

### Usage

    lakeformation_get_data_lake_settings(CatalogId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_get_data_lake_settings_:_CatalogId">CatalogId</code></td>
<td><p>The identifier for the Data Catalog. By default, the account ID.
The Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your Lake Formation environment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

### Request syntax

    svc$get_data_lake_settings(
      CatalogId = "string"
    )
