<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_verified_access_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## An Amazon Web Services Verified Access group is a collection of Amazon Web Services Verified Access endpoints who's associated applications have similar security requirements

### Description

An Amazon Web Services Verified Access group is a collection of Amazon
Web Services Verified Access endpoints who's associated applications
have similar security requirements. Each instance within a Verified
Access group shares an Verified Access policy. For example, you can
group all Verified Access instances associated with "sales" applications
together and use one common Verified Access policy.

### Usage

    ec2_create_verified_access_group(VerifiedAccessInstanceId, Description,
      PolicyDocument, TagSpecifications, ClientToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_verified_access_group_:_VerifiedAccessInstanceId">VerifiedAccessInstanceId</code></td>
<td><p>[required] The ID of the Verified Access instance.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_verified_access_group_:_Description">Description</code></td>
<td><p>A description for the Verified Access group.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_verified_access_group_:_PolicyDocument">PolicyDocument</code></td>
<td><p>The Verified Access policy document.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_verified_access_group_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the Verified Access group.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_verified_access_group_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive token that you provide to ensure
idempotency of your modification request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_verified_access_group_:_DryRun">DryRun</code></td>
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
      VerifiedAccessGroup = list(
        VerifiedAccessGroupId = "string",
        VerifiedAccessInstanceId = "string",
        Description = "string",
        Owner = "string",
        VerifiedAccessGroupArn = "string",
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

    svc$create_verified_access_group(
      VerifiedAccessInstanceId = "string",
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
