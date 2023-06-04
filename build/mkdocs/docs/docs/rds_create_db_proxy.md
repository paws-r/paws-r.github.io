<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_db_proxy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DB proxy

### Description

Creates a new DB proxy.

### Usage

    rds_create_db_proxy(DBProxyName, EngineFamily, Auth, RoleArn,
      VpcSubnetIds, VpcSecurityGroupIds, RequireTLS, IdleClientTimeout,
      DebugLogging, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rds_create_db_proxy_:_DBProxyName">DBProxyName</code></td>
<td><p>[required] The identifier for the proxy. This name must be unique
for all proxies owned by your Amazon Web Services account in the
specified Amazon Web Services Region. An identifier must begin with a
letter and must contain only ASCII letters, digits, and hyphens; it
can't end with a hyphen or contain two consecutive hyphens.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_proxy_:_EngineFamily">EngineFamily</code></td>
<td><p>[required] The kinds of databases that the proxy can connect to.
This value determines which database network protocol the proxy
recognizes when it interprets network traffic to and from the database.
For Aurora MySQL, RDS for MariaDB, and RDS for MySQL databases, specify
<code>MYSQL</code>. For Aurora PostgreSQL and RDS for PostgreSQL
databases, specify <code>POSTGRESQL</code>. For RDS for Microsoft SQL
Server, specify <code>SQLSERVER</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_proxy_:_Auth">Auth</code></td>
<td><p>[required] The authorization mechanism that the proxy
uses.</p></td>
</tr>
<tr class="even">
<td><code id="rds_create_db_proxy_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
the proxy uses to access secrets in Amazon Web Services Secrets
Manager.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_proxy_:_VpcSubnetIds">VpcSubnetIds</code></td>
<td><p>[required] One or more VPC subnet IDs to associate with the new
proxy.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_proxy_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>One or more VPC security group IDs to associate with the new
proxy.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_proxy_:_RequireTLS">RequireTLS</code></td>
<td><p>A Boolean parameter that specifies whether Transport Layer
Security (TLS) encryption is required for connections to the proxy. By
enabling this setting, you can enforce encrypted TLS connections to the
proxy.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_proxy_:_IdleClientTimeout">IdleClientTimeout</code></td>
<td><p>The number of seconds that a connection to the proxy can be
inactive before the proxy disconnects it. You can set this value higher
or lower than the connection timeout limit for the associated
database.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_proxy_:_DebugLogging">DebugLogging</code></td>
<td><p>Whether the proxy includes detailed information about SQL
statements in its logs. This information helps you to debug issues
involving SQL behavior or the performance and scalability of the proxy
connections. The debug information includes the text of SQL statements
that you submit through the proxy. Thus, only enable this setting when
needed for debugging, and only when you have security measures in place
to safeguard any sensitive information that appears in the
logs.</p></td>
</tr>
<tr class="even">
<td><code id="rds_create_db_proxy_:_Tags">Tags</code></td>
<td><p>An optional set of key-value pairs to associate arbitrary data of
your choosing with the proxy.</p></td>
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

    svc$create_db_proxy(
      DBProxyName = "string",
      EngineFamily = "MYSQL"|"POSTGRESQL"|"SQLSERVER",
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
      VpcSubnetIds = list(
        "string"
      ),
      VpcSecurityGroupIds = list(
        "string"
      ),
      RequireTLS = TRUE|FALSE,
      IdleClientTimeout = 123,
      DebugLogging = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
