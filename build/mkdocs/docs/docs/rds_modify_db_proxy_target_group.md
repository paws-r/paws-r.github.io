<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_db_proxy_target_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the properties of a DBProxyTargetGroup

### Description

Modifies the properties of a `DBProxyTargetGroup`.

### Usage

    rds_modify_db_proxy_target_group(TargetGroupName, DBProxyName,
      ConnectionPoolConfig, NewName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_modify_db_proxy_target_group_:_TargetGroupName">TargetGroupName</code></td>
<td><p>[required] The name of the target group to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_proxy_target_group_:_DBProxyName">DBProxyName</code></td>
<td><p>[required] The name of the proxy.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_proxy_target_group_:_ConnectionPoolConfig">ConnectionPoolConfig</code></td>
<td><p>The settings that determine the size and behavior of the
connection pool for the target group.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_proxy_target_group_:_NewName">NewName</code></td>
<td><p>The new name for the modified <code>DBProxyTarget</code>. An
identifier must begin with a letter and must contain only ASCII letters,
digits, and hyphens; it can't end with a hyphen or contain two
consecutive hyphens.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBProxyTargetGroup = list(
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
    )

### Request syntax

    svc$modify_db_proxy_target_group(
      TargetGroupName = "string",
      DBProxyName = "string",
      ConnectionPoolConfig = list(
        MaxConnectionsPercent = 123,
        MaxIdleConnectionsPercent = 123,
        ConnectionBorrowTimeout = 123,
        SessionPinningFilters = list(
          "string"
        ),
        InitQuery = "string"
      ),
      NewName = "string"
    )
