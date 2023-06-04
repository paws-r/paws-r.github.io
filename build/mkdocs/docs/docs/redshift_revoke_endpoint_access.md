<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_revoke_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Revokes access to a cluster

### Description

Revokes access to a cluster.

### Usage

    redshift_revoke_endpoint_access(ClusterIdentifier, Account, VpcIds,
      Force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_revoke_endpoint_access_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The cluster to revoke access from.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_revoke_endpoint_access_:_Account">Account</code></td>
<td><p>The Amazon Web Services account ID whose access is to be
revoked.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_revoke_endpoint_access_:_VpcIds">VpcIds</code></td>
<td><p>The virtual private cloud (VPC) identifiers for which access is
to be revoked.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_revoke_endpoint_access_:_Force">Force</code></td>
<td><p>Indicates whether to force the revoke action. If true, the
Redshift-managed VPC endpoints associated with the endpoint
authorization are also deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Grantor = "string",
      Grantee = "string",
      ClusterIdentifier = "string",
      AuthorizeTime = as.POSIXct(
        "2015-01-01"
      ),
      ClusterStatus = "string",
      Status = "Authorized"|"Revoking",
      AllowedAllVPCs = TRUE|FALSE,
      AllowedVPCs = list(
        "string"
      ),
      EndpointCount = 123
    )

### Request syntax

    svc$revoke_endpoint_access(
      ClusterIdentifier = "string",
      Account = "string",
      VpcIds = list(
        "string"
      ),
      Force = TRUE|FALSE
    )
