<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_db_proxy_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the settings for an existing DB proxy endpoint

### Description

Changes the settings for an existing DB proxy endpoint.

### Usage

    rds_modify_db_proxy_endpoint(DBProxyEndpointName,
      NewDBProxyEndpointName, VpcSecurityGroupIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_modify_db_proxy_endpoint_:_DBProxyEndpointName">DBProxyEndpointName</code></td>
<td><p>[required] The name of the DB proxy sociated with the DB proxy
endpoint that you want to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_proxy_endpoint_:_NewDBProxyEndpointName">NewDBProxyEndpointName</code></td>
<td><p>The new identifier for the <code>DBProxyEndpoint</code>. An
identifier must begin with a letter and must contain only ASCII letters,
digits, and hyphens; it can't end with a hyphen or contain two
consecutive hyphens.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_proxy_endpoint_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>The VPC security group IDs for the DB proxy endpoint. When the DB
proxy endpoint uses a different VPC than the original proxy, you also
specify a different set of security group IDs than for the original
proxy.</p></td>
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

    svc$modify_db_proxy_endpoint(
      DBProxyEndpointName = "string",
      NewDBProxyEndpointName = "string",
      VpcSecurityGroupIds = list(
        "string"
      )
    )
