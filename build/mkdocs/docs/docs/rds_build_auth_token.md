<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_build_auth_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Return an authentication token for a database connection

### Description

Return an authentication token used as the password for a database
connection.

### Usage

    rds_build_auth_token(endpoint, region, user, creds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rds_build_auth_token_:_endpoint">endpoint</code></td>
<td><p>[required] Hostname and port needed to connect to the database:
<code
style="white-space: pre;">⁠&lt;host&gt;:&lt;port&gt;⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code id="rds_build_auth_token_:_region">region</code></td>
<td><p>[required] AWS region the database is located in.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_build_auth_token_:_user">user</code></td>
<td><p>[required] User account within the database to sign in
with.</p></td>
</tr>
<tr class="even">
<td><code id="rds_build_auth_token_:_creds">creds</code></td>
<td><p>Credentials to be signed with.</p></td>
</tr>
</tbody>
</table>

### Details

See [*IAM Database Authentication for MySQL and
PostgreSQL*](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
for more information on using IAM database authentication with RDS.

### Request syntax

    svc$build_auth_token(
      endpoint = "string",
      region = "string",
      user = "string",
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      )
    )

### Examples

    ## Not run: 
    # This example gets an authentication token for an RDS database, then
    # connects to the database using the token.
    host <- "database-1.cluster-abcdef123456.us-east-1.rds.amazonaws.com"
    port <- 3306
    user <- "jane_doe"
    token <- svc$build_auth_token(
      endpoint = sprintf("%s:%s", host, port),
      region = "us-east-1",
      user = user
    )
    conn <- DBI::dbConnect(
      drv = RMariaDB::MariaDB(),
      user = user,
      password = token,
      host = host,
      port = port,
      client.flag = RMariaDB::CLIENT_SSL
    )
    ## End(Not run)
