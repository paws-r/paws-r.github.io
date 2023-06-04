<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_db_proxy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the settings for an existing DB proxy

### Description

Changes the settings for an existing DB proxy.

### Usage

    rds_modify_db_proxy(DBProxyName, NewDBProxyName, Auth, RequireTLS,
      IdleClientTimeout, DebugLogging, RoleArn, SecurityGroups)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rds_modify_db_proxy_:_DBProxyName">DBProxyName</code></td>
<td><p>[required] The identifier for the <code>DBProxy</code> to
modify.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_proxy_:_NewDBProxyName">NewDBProxyName</code></td>
<td><p>The new identifier for the <code>DBProxy</code>. An identifier
must begin with a letter and must contain only ASCII letters, digits,
and hyphens; it can't end with a hyphen or contain two consecutive
hyphens.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_modify_db_proxy_:_Auth">Auth</code></td>
<td><p>The new authentication settings for the
<code>DBProxy</code>.</p></td>
</tr>
<tr class="even">
<td><code id="rds_modify_db_proxy_:_RequireTLS">RequireTLS</code></td>
<td><p>Whether Transport Layer Security (TLS) encryption is required for
connections to the proxy. By enabling this setting, you can enforce
encrypted TLS connections to the proxy, even if the associated database
doesn't use TLS.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_proxy_:_IdleClientTimeout">IdleClientTimeout</code></td>
<td><p>The number of seconds that a connection to the proxy can be
inactive before the proxy disconnects it. You can set this value higher
or lower than the connection timeout limit for the associated
database.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_proxy_:_DebugLogging">DebugLogging</code></td>
<td><p>Whether the proxy includes detailed information about SQL
statements in its logs. This information helps you to debug issues
involving SQL behavior or the performance and scalability of the proxy
connections. The debug information includes the text of SQL statements
that you submit through the proxy. Thus, only enable this setting when
needed for debugging, and only when you have security measures in place
to safeguard any sensitive information that appears in the
logs.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_modify_db_proxy_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the IAM role that the proxy
uses to access secrets in Amazon Web Services Secrets Manager.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_proxy_:_SecurityGroups">SecurityGroups</code></td>
<td><p>The new list of security groups for the
<code>DBProxy</code>.</p></td>
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

    svc$modify_db_proxy(
      DBProxyName = "string",
      NewDBProxyName = "string",
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
      RequireTLS = TRUE|FALSE,
      IdleClientTimeout = 123,
      DebugLogging = TRUE|FALSE,
      RoleArn = "string",
      SecurityGroups = list(
        "string"
      )
    )
