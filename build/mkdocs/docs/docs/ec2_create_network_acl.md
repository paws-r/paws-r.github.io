<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_network_acl</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a network ACL in a VPC

### Description

Creates a network ACL in a VPC. Network ACLs provide an optional layer
of security (in addition to security groups) for the instances in your
VPC.

For more information, see [Network
ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/) in the *Amazon
Virtual Private Cloud User Guide*.

### Usage

    ec2_create_network_acl(DryRun, VpcId, TagSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_network_acl_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_network_acl_:_VpcId">VpcId</code></td>
<td><p>[required] The ID of the VPC.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_acl_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the network ACL.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkAcl = list(
        Associations = list(
          list(
            NetworkAclAssociationId = "string",
            NetworkAclId = "string",
            SubnetId = "string"
          )
        ),
        Entries = list(
          list(
            CidrBlock = "string",
            Egress = TRUE|FALSE,
            IcmpTypeCode = list(
              Code = 123,
              Type = 123
            ),
            Ipv6CidrBlock = "string",
            PortRange = list(
              From = 123,
              To = 123
            ),
            Protocol = "string",
            RuleAction = "allow"|"deny",
            RuleNumber = 123
          )
        ),
        IsDefault = TRUE|FALSE,
        NetworkAclId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        VpcId = "string",
        OwnerId = "string"
      )
    )

### Request syntax

    svc$create_network_acl(
      DryRun = TRUE|FALSE,
      VpcId = "string",
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
      )
    )

### Examples

    ## Not run: 
    # This example creates a network ACL for the specified VPC.
    svc$create_network_acl(
      VpcId = "vpc-a01106c2"
    )

    ## End(Not run)
