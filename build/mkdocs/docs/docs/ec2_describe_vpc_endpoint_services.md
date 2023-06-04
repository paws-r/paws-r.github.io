<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_vpc_endpoint_services</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes available services to which you can create a VPC endpoint

### Description

Describes available services to which you can create a VPC endpoint.

When the service provider and the consumer have different accounts in
multiple Availability Zones, and the consumer views the VPC endpoint
service information, the response only includes the common Availability
Zones. For example, when the service provider account uses `⁠us-east-1a⁠`
and `⁠us-east-1c⁠` and the consumer uses `⁠us-east-1a⁠` and `⁠us-east-1b⁠`,
the response includes the VPC endpoint services in the common
Availability Zone, `⁠us-east-1a⁠`.

### Usage

    ec2_describe_vpc_endpoint_services(DryRun, ServiceNames, Filters,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_services_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_vpc_endpoint_services_:_ServiceNames">ServiceNames</code></td>
<td><p>The service names.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_services_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>owner</code> - The ID or alias of the Amazon Web Services
account that owns the service.</p></li>
<li><p><code>service-name</code> - The name of the service.</p></li>
<li><p><code>service-type</code> - The type of service
(<code>Interface</code> | <code>Gateway</code> |
<code>GatewayLoadBalancer</code>).</p></li>
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
id="ec2_describe_vpc_endpoint_services_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this request. The
request returns a token that you can specify in a subsequent call to get
the next set of results.</p>
<p>Constraint: If the value is greater than 1,000, we return only 1,000
items.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_vpc_endpoint_services_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a prior call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceNames = list(
        "string"
      ),
      ServiceDetails = list(
        list(
          ServiceName = "string",
          ServiceId = "string",
          ServiceType = list(
            list(
              ServiceType = "Interface"|"Gateway"|"GatewayLoadBalancer"
            )
          ),
          AvailabilityZones = list(
            "string"
          ),
          Owner = "string",
          BaseEndpointDnsNames = list(
            "string"
          ),
          PrivateDnsName = "string",
          PrivateDnsNames = list(
            list(
              PrivateDnsName = "string"
            )
          ),
          VpcEndpointPolicySupported = TRUE|FALSE,
          AcceptanceRequired = TRUE|FALSE,
          ManagesVpcEndpoints = TRUE|FALSE,
          PayerResponsibility = "ServiceOwner",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          PrivateDnsNameVerificationState = "pendingVerification"|"verified"|"failed",
          SupportedIpAddressTypes = list(
            "ipv4"|"ipv6"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_vpc_endpoint_services(
      DryRun = TRUE|FALSE,
      ServiceNames = list(
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
