<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_proxy_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about DB proxy endpoints

### Description

Returns information about DB proxy endpoints.

### Usage

    rds_describe_db_proxy_endpoints(DBProxyName, DBProxyEndpointName,
      Filters, Marker, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_proxy_endpoints_:_DBProxyName">DBProxyName</code></td>
<td><p>The name of the DB proxy whose endpoints you want to describe. If
you omit this parameter, the output includes information about all DB
proxy endpoints associated with all your DB proxies.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_proxy_endpoints_:_DBProxyEndpointName">DBProxyEndpointName</code></td>
<td><p>The name of a DB proxy endpoint to describe. If you omit this
parameter, the output includes information about all DB proxy endpoints
associated with the specified proxy.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_proxy_endpoints_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_proxy_endpoints_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_proxy_endpoints_:_MaxRecords">MaxRecords</code></td>
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
      DBProxyEndpoints = list(
        list(
          DBProxyEndpointName = "string",
          DBProxyEndpointArn = "string",
          DBProxyName = "string",
          Status = "available"|"modifying"|"incompatible-network"|"insufficient-resource-limits"|"creating"|"deleting",
          VpcId = "string",
          VpcSecurityGroupIds = list(
            "string"
          ),
          VpcSubnetIds = list(
            "string"
          ),
          Endpoint = "string",
          CreatedDate = as.POSIXct(
            "2015-01-01"
          ),
          TargetRole = "READ_WRITE"|"READ_ONLY",
          IsDefault = TRUE|FALSE
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_db_proxy_endpoints(
      DBProxyName = "string",
      DBProxyEndpointName = "string",
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
