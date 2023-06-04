<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_register_db_proxy_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associate one or more DBProxyTarget data structures with a DBProxyTargetGroup

### Description

Associate one or more `DBProxyTarget` data structures with a
`DBProxyTargetGroup`.

### Usage

    rds_register_db_proxy_targets(DBProxyName, TargetGroupName,
      DBInstanceIdentifiers, DBClusterIdentifiers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_register_db_proxy_targets_:_DBProxyName">DBProxyName</code></td>
<td><p>[required] The identifier of the <code>DBProxy</code> that is
associated with the <code>DBProxyTargetGroup</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_register_db_proxy_targets_:_TargetGroupName">TargetGroupName</code></td>
<td><p>The identifier of the <code>DBProxyTargetGroup</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_register_db_proxy_targets_:_DBInstanceIdentifiers">DBInstanceIdentifiers</code></td>
<td><p>One or more DB instance identifiers.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_register_db_proxy_targets_:_DBClusterIdentifiers">DBClusterIdentifiers</code></td>
<td><p>One or more DB cluster identifiers.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBProxyTargets = list(
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
      )
    )

### Request syntax

    svc$register_db_proxy_targets(
      DBProxyName = "string",
      TargetGroupName = "string",
      DBInstanceIdentifiers = list(
        "string"
      ),
      DBClusterIdentifiers = list(
        "string"
      )
    )
