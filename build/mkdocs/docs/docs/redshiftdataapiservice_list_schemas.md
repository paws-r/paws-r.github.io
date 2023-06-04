<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftdataapiservice_list_schemas</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the schemas in a database

### Description

Lists the schemas in a database. A token is returned to page through the
schema list. Depending on the authorization method, use one of the
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

    redshiftdataapiservice_list_schemas(ClusterIdentifier,
      ConnectedDatabase, Database, DbUser, MaxResults, NextToken,
      SchemaPattern, SecretArn, WorkgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftdataapiservice_list_schemas_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The cluster identifier. This parameter is required when
connecting to a cluster and authenticating using either Secrets Manager
or temporary credentials.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftdataapiservice_list_schemas_:_ConnectedDatabase">ConnectedDatabase</code></td>
<td><p>A database name. The connected database is specified when you
connect with your authentication credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftdataapiservice_list_schemas_:_Database">Database</code></td>
<td><p>[required] The name of the database that contains the schemas to
list. If <code>ConnectedDatabase</code> is not specified, this is also
the database to connect to with your authentication
credentials.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftdataapiservice_list_schemas_:_DbUser">DbUser</code></td>
<td><p>The database user name. This parameter is required when
connecting to a cluster as a database user and authenticating using
temporary credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftdataapiservice_list_schemas_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of schemas to return in the response. If more
schemas exist than fit in one response, then <code>NextToken</code> is
returned to page through the results.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftdataapiservice_list_schemas_:_NextToken">NextToken</code></td>
<td><p>A value that indicates the starting point for the next set of
response records in a subsequent request. If a value is returned in a
response, you can retrieve the next set of records by providing this
returned NextToken value in the next NextToken parameter and retrying
the command. If the NextToken field is empty, all response records have
been retrieved for the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftdataapiservice_list_schemas_:_SchemaPattern">SchemaPattern</code></td>
<td><p>A pattern to filter results by schema name. Within a schema
pattern, "%" means match any substring of 0 or more characters and "_"
means match any one character. Only schema name entries matching the
search pattern are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftdataapiservice_list_schemas_:_SecretArn">SecretArn</code></td>
<td><p>The name or ARN of the secret that enables access to the
database. This parameter is required when authenticating using Secrets
Manager.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftdataapiservice_list_schemas_:_WorkgroupName">WorkgroupName</code></td>
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
      NextToken = "string",
      Schemas = list(
        "string"
      )
    )

### Request syntax

    svc$list_schemas(
      ClusterIdentifier = "string",
      ConnectedDatabase = "string",
      Database = "string",
      DbUser = "string",
      MaxResults = 123,
      NextToken = "string",
      SchemaPattern = "string",
      SecretArn = "string",
      WorkgroupName = "string"
    )
