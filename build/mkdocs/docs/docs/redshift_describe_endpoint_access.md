<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a Redshift-managed VPC endpoint

### Description

Describes a Redshift-managed VPC endpoint.

### Usage

    redshift_describe_endpoint_access(ClusterIdentifier, ResourceOwner,
      EndpointName, VpcId, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_endpoint_access_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The cluster identifier associated with the described
endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_endpoint_access_:_ResourceOwner">ResourceOwner</code></td>
<td><p>The Amazon Web Services account ID of the owner of the
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_endpoint_access_:_EndpointName">EndpointName</code></td>
<td><p>The name of the endpoint to be described.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_endpoint_access_:_VpcId">VpcId</code></td>
<td><p>The virtual private cloud (VPC) identifier with access to the
cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_endpoint_access_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a <code>Marker</code> is included in the
response so that the remaining results can be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_endpoint_access_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_endpoint_access</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by the <code>MaxRecords</code> parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointAccessList = list(
        list(
          ClusterIdentifier = "string",
          ResourceOwner = "string",
          SubnetGroupName = "string",
          EndpointStatus = "string",
          EndpointName = "string",
          EndpointCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          Port = 123,
          Address = "string",
          VpcSecurityGroups = list(
            list(
              VpcSecurityGroupId = "string",
              Status = "string"
            )
          ),
          VpcEndpoint = list(
            VpcEndpointId = "string",
            VpcId = "string",
            NetworkInterfaces = list(
              list(
                NetworkInterfaceId = "string",
                SubnetId = "string",
                PrivateIpAddress = "string",
                AvailabilityZone = "string"
              )
            )
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_endpoint_access(
      ClusterIdentifier = "string",
      ResourceOwner = "string",
      EndpointName = "string",
      VpcId = "string",
      MaxRecords = 123,
      Marker = "string"
    )
