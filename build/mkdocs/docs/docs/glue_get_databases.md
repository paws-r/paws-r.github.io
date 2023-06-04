<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_databases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves all databases defined in a given Data Catalog

### Description

Retrieves all databases defined in a given Data Catalog.

### Usage

    glue_get_databases(CatalogId, NextToken, MaxResults, ResourceShareType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_get_databases_:_CatalogId">CatalogId</code></td>
<td><p>The ID of the Data Catalog from which to retrieve
<code>Databases</code>. If none is provided, the Amazon Web Services
account ID is used by default.</p></td>
</tr>
<tr class="even">
<td><code id="glue_get_databases_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_get_databases_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of databases to return in one
response.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_databases_:_ResourceShareType">ResourceShareType</code></td>
<td><p>Allows you to specify that you want to list the databases shared
with your account. The allowable values are <code>FEDERATED</code>,
<code>FOREIGN</code> or <code>ALL</code>.</p>
<ul>
<li><p>If set to <code>FEDERATED</code>, will list the federated
databases (referencing an external entity) shared with your
account.</p></li>
<li><p>If set to <code>FOREIGN</code>, will list the databases shared
with your account.</p></li>
<li><p>If set to <code>ALL</code>, will list the databases shared with
your account, as well as the databases in yor local account.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatabaseList = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_databases(
      CatalogId = "string",
      NextToken = "string",
      MaxResults = 123,
      ResourceShareType = "FOREIGN"|"ALL"|"FEDERATED"
    )
