<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_db_proxy_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a DBProxyEndpoint

### Description

Creates a `DBProxyEndpoint`. Only applies to proxies that are associated
with Aurora DB clusters. You can use DB proxy endpoints to specify
read/write or read-only access to the DB cluster. You can also use DB
proxy endpoints to access a DB proxy through a different VPC than the
proxy's default VPC.

### Usage

    rds_create_db_proxy_endpoint(DBProxyName, DBProxyEndpointName,
      VpcSubnetIds, VpcSecurityGroupIds, TargetRole, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_create_db_proxy_endpoint_:_DBProxyName">DBProxyName</code></td>
<td><p>[required] The name of the DB proxy associated with the DB proxy
endpoint that you create.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_proxy_endpoint_:_DBProxyEndpointName">DBProxyEndpointName</code></td>
<td><p>[required] The name of the DB proxy endpoint to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_proxy_endpoint_:_VpcSubnetIds">VpcSubnetIds</code></td>
<td><p>[required] The VPC subnet IDs for the DB proxy endpoint that you
create. You can specify a different set of subnet IDs than for the
original DB proxy.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_proxy_endpoint_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>The VPC security group IDs for the DB proxy endpoint that you
create. You can specify a different set of security group IDs than for
the original DB proxy. The default is the default security group for the
VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_proxy_endpoint_:_TargetRole">TargetRole</code></td>
<td><p>A value that indicates whether the DB proxy endpoint can be used
for read/write or read-only operations. The default is
<code>READ_WRITE</code>. The only role that proxies for RDS for
Microsoft SQL Server support is <code>READ_WRITE</code>.</p></td>
</tr>
<tr class="even">
<td><code id="rds_create_db_proxy_endpoint_:_Tags">Tags</code></td>
<td></td>
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

    svc$create_db_proxy_endpoint(
      DBProxyName = "string",
      DBProxyEndpointName = "string",
      VpcSubnetIds = list(
        "string"
      ),
      VpcSecurityGroupIds = list(
        "string"
      ),
      TargetRole = "READ_WRITE"|"READ_ONLY",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
