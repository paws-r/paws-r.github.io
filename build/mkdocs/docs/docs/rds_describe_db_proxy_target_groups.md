<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_proxy_target_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about DB proxy target groups, represented by DBProxyTargetGroup data structures

### Description

Returns information about DB proxy target groups, represented by
`DBProxyTargetGroup` data structures.

### Usage

    rds_describe_db_proxy_target_groups(DBProxyName, TargetGroupName,
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
id="rds_describe_db_proxy_target_groups_:_DBProxyName">DBProxyName</code></td>
<td><p>[required] The identifier of the <code>DBProxy</code> associated
with the target group.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_proxy_target_groups_:_TargetGroupName">TargetGroupName</code></td>
<td><p>The identifier of the <code>DBProxyTargetGroup</code> to
describe.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_proxy_target_groups_:_Filters">Filters</code></td>
<td><p>This parameter is not currently supported.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_proxy_target_groups_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_proxy_target_groups_:_MaxRecords">MaxRecords</code></td>
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
      TargetGroups = list(
        list(
          DBProxyName = "string",
          TargetGroupName = "string",
          TargetGroupArn = "string",
          IsDefault = TRUE|FALSE,
          Status = "string",
          ConnectionPoolConfig = list(
            MaxConnectionsPercent = 123,
            MaxIdleConnectionsPercent = 123,
            ConnectionBorrowTimeout = 123,
            SessionPinningFilters = list(
              "string"
            ),
            InitQuery = "string"
          ),
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

    svc$describe_db_proxy_target_groups(
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
