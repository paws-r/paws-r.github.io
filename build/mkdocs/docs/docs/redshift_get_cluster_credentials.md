<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_get_cluster_credentials</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a database user name and temporary password with temporary authorization to log on to an Amazon Redshift database

### Description

Returns a database user name and temporary password with temporary
authorization to log on to an Amazon Redshift database. The action
returns the database user name prefixed with `⁠IAM:⁠` if `AutoCreate` is
`False` or `⁠IAMA:⁠` if `AutoCreate` is `True`. You can optionally specify
one or more database user groups that the user will join at log on. By
default, the temporary credentials expire in 900 seconds. You can
optionally specify a duration between 900 seconds (15 minutes) and 3600
seconds (60 minutes). For more information, see [Using IAM
Authentication to Generate Database User
Credentials](https://docs.aws.amazon.com/redshift/latest/mgmt/generating-user-credentials.html)
in the Amazon Redshift Cluster Management Guide.

The Identity and Access Management (IAM) user or role that runs
GetClusterCredentials must have an IAM policy attached that allows
access to all necessary actions and resources. For more information
about permissions, see [Resource Policies for
GetClusterCredentials](https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html#redshift-policy-resources.getclustercredentials-resources)
in the Amazon Redshift Cluster Management Guide.

If the `DbGroups` parameter is specified, the IAM policy must allow the
`redshift:JoinGroup` action with access to the listed `dbgroups`.

In addition, if the `AutoCreate` parameter is set to `True`, then the
policy must include the `redshift:CreateClusterUser` permission.

If the `DbName` parameter is specified, the IAM policy must allow access
to the resource `dbname` for the specified database name.

### Usage

    redshift_get_cluster_credentials(DbUser, DbName, ClusterIdentifier,
      DurationSeconds, AutoCreate, DbGroups)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_get_cluster_credentials_:_DbUser">DbUser</code></td>
<td><p>[required] The name of a database user. If a user name matching
<code>DbUser</code> exists in the database, the temporary user
credentials have the same permissions as the existing user. If
<code>DbUser</code> doesn't exist in the database and
<code>Autocreate</code> is <code>True</code>, a new user is created
using the value for <code>DbUser</code> with PUBLIC permissions. If a
database user matching the value for <code>DbUser</code> doesn't exist
and <code>Autocreate</code> is <code>False</code>, then the command
succeeds but the connection attempt will fail because the user doesn't
exist in the database.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">CREATE
USER</a> in the Amazon Redshift Database Developer Guide.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 64 alphanumeric characters or hyphens. The user name
can't be <code>PUBLIC</code>.</p></li>
<li><p>Must contain uppercase or lowercase letters, numbers, underscore,
plus sign, period (dot), at symbol (@), or hyphen.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Must not contain a colon ( : ) or slash ( / ).</p></li>
<li><p>Cannot be a reserved word. A list of reserved words can be found
in <a
href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved
Words</a> in the Amazon Redshift Database Developer Guide.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_get_cluster_credentials_:_DbName">DbName</code></td>
<td><p>The name of a database that <code>DbUser</code> is authorized to
log on to. If <code>DbName</code> is not specified, <code>DbUser</code>
can log on to any existing database.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 64 alphanumeric characters or hyphens</p></li>
<li><p>Must contain uppercase or lowercase letters, numbers, underscore,
plus sign, period (dot), at symbol (@), or hyphen.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Must not contain a colon ( : ) or slash ( / ).</p></li>
<li><p>Cannot be a reserved word. A list of reserved words can be found
in <a
href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved
Words</a> in the Amazon Redshift Database Developer Guide.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="redshift_get_cluster_credentials_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The unique identifier of the cluster that contains the
database for which you are requesting credentials. This parameter is
case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_get_cluster_credentials_:_DurationSeconds">DurationSeconds</code></td>
<td><p>The number of seconds until the returned temporary password
expires.</p>
<p>Constraint: minimum 900, maximum 3600.</p>
<p>Default: 900</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_get_cluster_credentials_:_AutoCreate">AutoCreate</code></td>
<td><p>Create a database user with the name specified for the user named
in <code>DbUser</code> if one does not exist.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_get_cluster_credentials_:_DbGroups">DbGroups</code></td>
<td><p>A list of the names of existing database groups that the user
named in <code>DbUser</code> will join for the current session, in
addition to any group memberships for an existing user. If not
specified, a new user is added only to PUBLIC.</p>
<p>Database group name constraints</p>
<ul>
<li><p>Must be 1 to 64 alphanumeric characters or hyphens</p></li>
<li><p>Must contain only lowercase letters, numbers, underscore, plus
sign, period (dot), at symbol (@), or hyphen.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Must not contain a colon ( : ) or slash ( / ).</p></li>
<li><p>Cannot be a reserved word. A list of reserved words can be found
in <a
href="https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html">Reserved
Words</a> in the Amazon Redshift Database Developer Guide.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DbUser = "string",
      DbPassword = "string",
      Expiration = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_cluster_credentials(
      DbUser = "string",
      DbName = "string",
      ClusterIdentifier = "string",
      DurationSeconds = 123,
      AutoCreate = TRUE|FALSE,
      DbGroups = list(
        "string"
      )
    )
