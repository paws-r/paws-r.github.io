<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpc_endpoint_service_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the VPC endpoint service configurations in your account (your services)

### Description

Describes the VPC endpoint service configurations in your account (your
services).

### Usage

    ec2_describe_vpc_endpoint_service_configurations(DryRun, ServiceIds,
      Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_service_configurations_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_endpoint_service_configurations_:_ServiceIds">ServiceIds</code></td>
<td><p>The IDs of the endpoint services.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_service_configurations_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>service-name</code> - The name of the service.</p></li>
<li><p><code>service-id</code> - The ID of the service.</p></li>
<li><p><code>service-state</code> - The state of the service
(<code>Pending</code> | <code>Available</code> | <code>Deleting</code> |
<code>Deleted</code> | <code>Failed</code>).</p></li>
<li><p><code>supported-ip-address-types</code> - The IP address type
(<code>ipv4</code> | <code>ipv6</code>).</p></li>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_endpoint_service_configurations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for the request in a
single page. The remaining results of the initial request can be seen by
sending another request with the returned <code>NextToken</code> value.
This value can be between 5 and 1,000; if <code>MaxResults</code> is
given a value larger than 1,000, only 1,000 results are
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_service_configurations_:_NextToken">NextToken</code></td>
<td><p>The token to retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceConfigurations = list(
        list(
          ServiceType = list(
            list(
              ServiceType = "Interface"|"Gateway"|"GatewayLoadBalancer"
            )
          ),
          ServiceId = "string",
          ServiceName = "string",
          ServiceState = "Pending"|"Available"|"Deleting"|"Deleted"|"Failed",
          AvailabilityZones = list(
            "string"
          ),
          AcceptanceRequired = TRUE|FALSE,
          ManagesVpcEndpoints = TRUE|FALSE,
          NetworkLoadBalancerArns = list(
            "string"
          ),
          GatewayLoadBalancerArns = list(
            "string"
          ),
          SupportedIpAddressTypes = list(
            "ipv4"|"ipv6"
          ),
          BaseEndpointDnsNames = list(
            "string"
          ),
          PrivateDnsName = "string",
          PrivateDnsNameConfiguration = list(
            State = "pendingVerification"|"verified"|"failed",
            Type = "string",
            Value = "string",
            Name = "string"
          ),
          PayerResponsibility = "ServiceOwner",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_vpc_endpoint_service_configurations(
      DryRun = TRUE|FALSE,
      ServiceIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
