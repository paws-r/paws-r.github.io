<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_authorize_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Grants access to a cluster

### Description

Grants access to a cluster.

### Usage

    redshift_authorize_endpoint_access(ClusterIdentifier, Account, VpcIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_authorize_endpoint_access_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The cluster identifier of the cluster to grant access
to.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_authorize_endpoint_access_:_Account">Account</code></td>
<td><p>[required] The Amazon Web Services account ID to grant access
to.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_authorize_endpoint_access_:_VpcIds">VpcIds</code></td>
<td><p>The virtual private cloud (VPC) identifiers to grant access
to.</p></td>
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

    svc$authorize_endpoint_access(
      ClusterIdentifier = "string",
      Account = "string",
      VpcIds = list(
        "string"
      )
    )
