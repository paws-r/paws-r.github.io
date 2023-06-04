<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_db_proxy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing DB proxy

### Description

Deletes an existing DB proxy.

### Usage

    rds_delete_db_proxy(DBProxyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rds_delete_db_proxy_:_DBProxyName">DBProxyName</code></td>
<td><p>[required] The name of the DB proxy to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBProxy = list(
        DBProxyName = "string",
        DBProxyArn = "string",
        Status = "available"|"modifying"|"incompatible-network"|"insufficient-resource-limits"|"creating"|"deleting"|"suspended"|"suspending"|"reactivating",
        EngineFamily = "string",
        VpcId = "string",
        VpcSecurityGroupIds = list(
          "string"
        ),
        VpcSubnetIds = list(
          "string"
        ),
        Auth = list(
          list(
            Description = "string",
            UserName = "string",
            AuthScheme = "SECRETS",
            SecretArn = "string",
            IAMAuth = "DISABLED"|"REQUIRED"|"ENABLED",
            ClientPasswordAuthType = "MYSQL_NATIVE_PASSWORD"|"POSTGRES_SCRAM_SHA_256"|"POSTGRES_MD5"|"SQL_SERVER_AUTHENTICATION"
          )
        ),
        RoleArn = "string",
        Endpoint = "string",
        RequireTLS = TRUE|FALSE,
        IdleClientTimeout = 123,
        DebugLogging = TRUE|FALSE,
        CreatedDate = as.POSIXct(
          "2015-01-01"
        ),
        UpdatedDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$delete_db_proxy(
      DBProxyName = "string"
    )
