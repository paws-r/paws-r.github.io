<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_endpoint_authorization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an endpoint authorization

### Description

Describes an endpoint authorization.

### Usage

    redshift_describe_endpoint_authorization(ClusterIdentifier, Account,
      Grantee, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_endpoint_authorization_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The cluster identifier of the cluster to access.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_endpoint_authorization_:_Account">Account</code></td>
<td><p>The Amazon Web Services account ID of either the cluster owner
(grantor) or grantee. If <code>Grantee</code> parameter is true, then
the <code>Account</code> value is of the grantor.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_endpoint_authorization_:_Grantee">Grantee</code></td>
<td><p>Indicates whether to check authorization from a grantor or
grantee point of view. If true, Amazon Redshift returns endpoint
authorizations that you've been granted. If false (default), checks
authorization from a grantor point of view.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_endpoint_authorization_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a <code>Marker</code> is included in the
response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_endpoint_authorization_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_endpoint_authorization</code> request. If this parameter
is specified, the response includes only records beyond the marker, up
to the value specified by the <code>MaxRecords</code>
parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointAuthorizationList = list(
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
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_endpoint_authorization(
      ClusterIdentifier = "string",
      Account = "string",
      Grantee = TRUE|FALSE,
      MaxRecords = 123,
      Marker = "string"
    )
