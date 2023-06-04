<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_proxies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about DB proxies

### Description

Returns information about DB proxies.

### Usage

    rds_describe_db_proxies(DBProxyName, Filters, Marker, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_proxies_:_DBProxyName">DBProxyName</code></td>
<td><p>The name of the DB proxy. If you omit this parameter, the output
includes information about all DB proxies owned by your Amazon Web
Services account ID.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_db_proxies_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_describe_db_proxies_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_proxies_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBProxies = list(
        list(
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
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_db_proxies(
      DBProxyName = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      Marker = "string",
      MaxRecords = 123
    )
