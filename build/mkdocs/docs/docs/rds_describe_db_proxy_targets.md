<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_proxy_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about DBProxyTarget objects

### Description

Returns information about `DBProxyTarget` objects. This API supports
pagination.

### Usage

    rds_describe_db_proxy_targets(DBProxyName, TargetGroupName, Filters,
      Marker, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_proxy_targets_:_DBProxyName">DBProxyName</code></td>
<td><p>[required] The identifier of the <code>DBProxyTarget</code> to
describe.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_proxy_targets_:_TargetGroupName">TargetGroupName</code></td>
<td><p>The identifier of the <code>DBProxyTargetGroup</code> to
describe.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_proxy_targets_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_db_proxy_targets_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_proxy_targets_:_MaxRecords">MaxRecords</code></td>
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
      Targets = list(
        list(
          TargetArn = "string",
          Endpoint = "string",
          TrackedClusterId = "string",
          RdsResourceId = "string",
          Port = 123,
          Type = "RDS_INSTANCE"|"RDS_SERVERLESS_ENDPOINT"|"TRACKED_CLUSTER",
          Role = "READ_WRITE"|"READ_ONLY"|"UNKNOWN",
          TargetHealth = list(
            State = "REGISTERING"|"AVAILABLE"|"UNAVAILABLE",
            Reason = "UNREACHABLE"|"CONNECTION_FAILED"|"AUTH_FAILURE"|"PENDING_PROXY_CAPACITY"|"INVALID_REPLICATION_STATE",
            Description = "string"
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_db_proxy_targets(
      DBProxyName = "string",
      TargetGroupName = "string",
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
