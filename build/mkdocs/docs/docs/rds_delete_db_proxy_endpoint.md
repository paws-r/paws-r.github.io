<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_db_proxy_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a DBProxyEndpoint

### Description

Deletes a `DBProxyEndpoint`. Doing so removes the ability to access the
DB proxy using the endpoint that you defined. The endpoint that you
delete might have provided capabilities such as read/write or read-only
operations, or using a different VPC than the DB proxy's default VPC.

### Usage

    rds_delete_db_proxy_endpoint(DBProxyEndpointName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_db_proxy_endpoint_:_DBProxyEndpointName">DBProxyEndpointName</code></td>
<td><p>[required] The name of the DB proxy endpoint to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBProxyEndpoint = list(
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
    )

### Request syntax

    svc$delete_db_proxy_endpoint(
      DBProxyEndpointName = "string"
    )
