<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_endpoint_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Redshift-managed VPC endpoint

### Description

Creates a Redshift-managed VPC endpoint.

### Usage

    redshift_create_endpoint_access(ClusterIdentifier, ResourceOwner,
      EndpointName, SubnetGroupName, VpcSecurityGroupIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_endpoint_access_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The cluster identifier of the cluster to access.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_endpoint_access_:_ResourceOwner">ResourceOwner</code></td>
<td><p>The Amazon Web Services account ID of the owner of the cluster.
This is only required if the cluster is in another Amazon Web Services
account.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_endpoint_access_:_EndpointName">EndpointName</code></td>
<td><p>[required] The Redshift-managed VPC endpoint name.</p>
<p>An endpoint name must contain 1-30 characters. Valid characters are
A-Z, a-z, 0-9, and hyphen(-). The first character must be a letter. The
name can't contain two consecutive hyphens or end with a
hyphen.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_endpoint_access_:_SubnetGroupName">SubnetGroupName</code></td>
<td><p>[required] The subnet group from which Amazon Redshift chooses
the subnet to deploy the endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_endpoint_access_:_VpcSecurityGroupIds">VpcSecurityGroupIds</code></td>
<td><p>The security group that defines the ports, protocols, and sources
for inbound traffic that you are authorizing into your
endpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

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

### Request syntax

    svc$create_endpoint_access(
      ClusterIdentifier = "string",
      ResourceOwner = "string",
      EndpointName = "string",
      SubnetGroupName = "string",
      VpcSecurityGroupIds = list(
        "string"
      )
    )
