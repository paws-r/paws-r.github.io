<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftdataapiservice_execute_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs an SQL statement, which can be data manipulation language (DML) or data definition language (DDL)

### Description

Runs an SQL statement, which can be data manipulation language (DML) or
data definition language (DDL). This statement must be a single SQL
statement. Depending on the authorization method, use one of the
following combinations of request parameters:

-   Secrets Manager - when connecting to a cluster, provide the
    `secret-arn` of a secret stored in Secrets Manager which has
    `username` and `password`. The specified secret contains credentials
    to connect to the `database` you specify. When you are connecting to
    a cluster, you also supply the database name, If you provide a
    cluster identifier (`dbClusterIdentifier`), it must match the
    cluster identifier stored in the secret. When you are connecting to
    a serverless workgroup, you also supply the database name.

-   Temporary credentials - when connecting to your data warehouse,
    choose one of the following options:

    -   When connecting to a serverless workgroup, specify the workgroup
        name and database name. The database user name is derived from
        the IAM identity. For example, `⁠arn:iam::123456789012:user:foo⁠`
        has the database user name `IAM:foo`. Also, permission to call
        the `redshift-serverless:GetCredentials` operation is required.

    -   When connecting to a cluster as an IAM identity, specify the
        cluster identifier and the database name. The database user name
        is derived from the IAM identity. For example,
        `⁠arn:iam::123456789012:user:foo⁠` has the database user name
        `IAM:foo`. Also, permission to call the
        `redshift:GetClusterCredentialsWithIAM` operation is required.

    -   When connecting to a cluster as a database user, specify the
        cluster identifier, the database name, and the database user
        name. Also, permission to call the
        `redshift:GetClusterCredentials` operation is required.

For more information about the Amazon Redshift Data API and CLI usage
examples, see [Using the Amazon Redshift Data
API](https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html) in
the *Amazon Redshift Management Guide*.

### Usage

    redshiftdataapiservice_execute_statement(ClientToken, ClusterIdentifier,
      Database, DbUser, Parameters, SecretArn, Sql, StatementName, WithEvent,
      WorkgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftdataapiservice_execute_statement_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftdataapiservice_execute_statement_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The cluster identifier. This parameter is required when
connecting to a cluster and authenticating using either Secrets Manager
or temporary credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftdataapiservice_execute_statement_:_Database">Database</code></td>
<td><p>[required] The name of the database. This parameter is required
when authenticating using either Secrets Manager or temporary
credentials.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftdataapiservice_execute_statement_:_DbUser">DbUser</code></td>
<td><p>The database user name. This parameter is required when
connecting to a cluster as a database user and authenticating using
temporary credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftdataapiservice_execute_statement_:_Parameters">Parameters</code></td>
<td><p>The parameters for the SQL statement.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftdataapiservice_execute_statement_:_SecretArn">SecretArn</code></td>
<td><p>The name or ARN of the secret that enables access to the
database. This parameter is required when authenticating using Secrets
Manager.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftdataapiservice_execute_statement_:_Sql">Sql</code></td>
<td><p>[required] The SQL statement text to run.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftdataapiservice_execute_statement_:_StatementName">StatementName</code></td>
<td><p>The name of the SQL statement. You can name the SQL statement
when you create it to identify the query.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftdataapiservice_execute_statement_:_WithEvent">WithEvent</code></td>
<td><p>A value that indicates whether to send an event to the Amazon
EventBridge event bus after the SQL statement runs.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftdataapiservice_execute_statement_:_WorkgroupName">WorkgroupName</code></td>
<td><p>The serverless workgroup name or Amazon Resource Name (ARN). This
parameter is required when connecting to a serverless workgroup and
authenticating using either Secrets Manager or temporary
credentials.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterIdentifier = "string",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      Database = "string",
      DbUser = "string",
      Id = "string",
      SecretArn = "string",
      WorkgroupName = "string"
    )

### Request syntax

    svc$execute_statement(
      ClientToken = "string",
      ClusterIdentifier = "string",
      Database = "string",
      DbUser = "string",
      Parameters = list(
        list(
          name = "string",
          value = "string"
        )
      ),
      SecretArn = "string",
      Sql = "string",
      StatementName = "string",
      WithEvent = TRUE|FALSE,
      WorkgroupName = "string"
    )
