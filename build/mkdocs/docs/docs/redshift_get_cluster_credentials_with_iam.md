<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_get_cluster_credentials_with_iam</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a database user name and temporary password with temporary authorization to log in to an Amazon Redshift database

### Description

Returns a database user name and temporary password with temporary
authorization to log in to an Amazon Redshift database. The database
user is mapped 1:1 to the source Identity and Access Management (IAM)
identity. For more information about IAM identities, see [IAM Identities
(users, user groups, and
roles)](https://docs.aws.amazon.com/IAM/latest/UserGuide/id.html) in the
Amazon Web Services Identity and Access Management User Guide.

The Identity and Access Management (IAM) identity that runs this
operation must have an IAM policy attached that allows access to all
necessary actions and resources. For more information about permissions,
see [Using identity-based policies (IAM
policies)](https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html)
in the Amazon Redshift Cluster Management Guide.

### Usage

    redshift_get_cluster_credentials_with_iam(DbName, ClusterIdentifier,
      DurationSeconds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_get_cluster_credentials_with_iam_:_DbName">DbName</code></td>
<td><p>The name of the database for which you are requesting
credentials. If the database name is specified, the IAM policy must
allow access to the resource <code>dbname</code> for the specified
database name. If the database name is not specified, access to all
databases is allowed.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_get_cluster_credentials_with_iam_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The unique identifier of the cluster that contains the
database for which you are requesting credentials.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_get_cluster_credentials_with_iam_:_DurationSeconds">DurationSeconds</code></td>
<td><p>The number of seconds until the returned temporary password
expires.</p>
<p>Range: 900-3600. Default: 900.</p></td>
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
      ),
      NextRefreshTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_cluster_credentials_with_iam(
      DbName = "string",
      ClusterIdentifier = "string",
      DurationSeconds = 123
    )
