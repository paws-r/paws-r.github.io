<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_verified_access_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## An Amazon Web Services Verified Access endpoint is where you define your application along with an optional endpoint-level access policy

### Description

An Amazon Web Services Verified Access endpoint is where you define your
application along with an optional endpoint-level access policy.

### Usage

    ec2_create_verified_access_endpoint(VerifiedAccessGroupId, EndpointType,
      AttachmentType, DomainCertificateArn, ApplicationDomain,
      EndpointDomainPrefix, SecurityGroupIds, LoadBalancerOptions,
      NetworkInterfaceOptions, Description, PolicyDocument, TagSpecifications,
      ClientToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_verified_access_endpoint_:_VerifiedAccessGroupId">VerifiedAccessGroupId</code></td>
<td><p>[required] The ID of the Verified Access group to associate the
endpoint with.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_verified_access_endpoint_:_EndpointType">EndpointType</code></td>
<td><p>[required] The type of Verified Access endpoint to
create.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_verified_access_endpoint_:_AttachmentType">AttachmentType</code></td>
<td><p>[required] The type of attachment.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_verified_access_endpoint_:_DomainCertificateArn">DomainCertificateArn</code></td>
<td><p>[required] The ARN of the public TLS/SSL certificate in Amazon
Web Services Certificate Manager to associate with the endpoint. The CN
in the certificate must match the DNS name your end users will use to
reach your application.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_verified_access_endpoint_:_ApplicationDomain">ApplicationDomain</code></td>
<td><p>[required] The DNS name for users to reach your
application.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_verified_access_endpoint_:_EndpointDomainPrefix">EndpointDomainPrefix</code></td>
<td><p>[required] A custom identifier that is prepended to the DNS name
that is generated for the endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_verified_access_endpoint_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>The IDs of the security groups to associate with the Verified
Access endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_verified_access_endpoint_:_LoadBalancerOptions">LoadBalancerOptions</code></td>
<td><p>The load balancer details. This parameter is required if the
endpoint type is <code>load-balancer</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_verified_access_endpoint_:_NetworkInterfaceOptions">NetworkInterfaceOptions</code></td>
<td><p>The network interface details. This parameter is required if the
endpoint type is <code>network-interface</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_verified_access_endpoint_:_Description">Description</code></td>
<td><p>A description for the Verified Access endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_verified_access_endpoint_:_PolicyDocument">PolicyDocument</code></td>
<td><p>The Verified Access policy document.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_verified_access_endpoint_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the Verified Access endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_verified_access_endpoint_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure
idempotency of your modification request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_verified_access_endpoint_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VerifiedAccessEndpoint = list(
        VerifiedAccessInstanceId = "string",
        VerifiedAccessGroupId = "string",
        VerifiedAccessEndpointId = "string",
        ApplicationDomain = "string",
        EndpointType = "load-balancer"|"network-interface",
        AttachmentType = "vpc",
        DomainCertificateArn = "string",
        EndpointDomain = "string",
        DeviceValidationDomain = "string",
        SecurityGroupIds = list(
          "string"
        ),
        LoadBalancerOptions = list(
          Protocol = "http"|"https",
          Port = 123,
          LoadBalancerArn = "string",
          SubnetIds = list(
            "string"
          )
        ),
        NetworkInterfaceOptions = list(
          NetworkInterfaceId = "string",
          Protocol = "http"|"https",
          Port = 123
        ),
        Status = list(
          Code = "pending"|"active"|"updating"|"deleting"|"deleted",
          Message = "string"
        ),
        Description = "string",
        CreationTime = "string",
        LastUpdatedTime = "string",
        DeletionTime = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_verified_access_endpoint(
      VerifiedAccessGroupId = "string",
      EndpointType = "load-balancer"|"network-interface",
      AttachmentType = "vpc",
      DomainCertificateArn = "string",
      ApplicationDomain = "string",
      EndpointDomainPrefix = "string",
      SecurityGroupIds = list(
        "string"
      ),
      LoadBalancerOptions = list(
        Protocol = "http"|"https",
        Port = 123,
        LoadBalancerArn = "string",
        SubnetIds = list(
          "string"
        )
      ),
      NetworkInterfaceOptions = list(
        NetworkInterfaceId = "string",
        Protocol = "http"|"https",
        Port = 123
      ),
      Description = "string",
      PolicyDocument = "string",
      TagSpecifications = list(
        list(
          ResourceType = "capacity-reservation"|"client-vpn-endpoint"|"customer-gateway"|"carrier-gateway"|"coip-pool"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"instance-event-window"|"internet-gateway"|"ipam"|"ipam-pool"|"ipam-scope"|"ipv4pool-ec2"|"ipv6pool-ec2"|"key-pair"|"launch-template"|"local-gateway"|"local-gateway-route-table"|"local-gateway-virtual-interface"|"local-gateway-virtual-interface-group"|"local-gateway-route-table-vpc-association"|"local-gateway-route-table-virtual-interface-group-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"network-insights-access-scope"|"network-insights-access-scope-analysis"|"placement-group"|"prefix-list"|"replace-root-volume-task"|"reserved-instances"|"route-table"|"security-group"|"security-group-rule"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"subnet-cidr-reservation"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-policy-table"|"transit-gateway-route-table"|"transit-gateway-route-table-announcement"|"volume"|"vpc"|"vpc-endpoint"|"vpc-endpoint-connection"|"vpc-endpoint-service"|"vpc-endpoint-service-permission"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log"|"capacity-reservation-fleet"|"traffic-mirror-filter-rule"|"vpc-endpoint-connection-device-type"|"verified-access-instance"|"verified-access-group"|"verified-access-endpoint"|"verified-access-policy"|"verified-access-trust-provider"|"vpn-connection-device-type"|"vpc-block-public-access-exclusion"|"ipam-resource-discovery"|"ipam-resource-discovery-association",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      ClientToken = "string",
      DryRun = TRUE|FALSE
    )
