<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_security_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a security group

### Description

Creates a security group.

A security group acts as a virtual firewall for your instance to control
inbound and outbound traffic. For more information, see [Amazon EC2
security
groups](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html)
in the *Amazon Elastic Compute Cloud User Guide* and [Security groups
for your
VPC](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html)
in the *Amazon Virtual Private Cloud User Guide*.

When you create a security group, you specify a friendly name of your
choice. You can have a security group for use in EC2-Classic with the
same name as a security group for use in a VPC. However, you can't have
two security groups for use in EC2-Classic with the same name or two
security groups for use in a VPC with the same name.

You have a default security group for use in EC2-Classic and a default
security group for use in your VPC. If you don't specify a security
group when you launch an instance, the instance is launched into the
appropriate default security group. A default security group includes a
default rule that grants instances unrestricted network access to each
other.

You can add or remove rules from your security groups using
`authorize_security_group_ingress`, `authorize_security_group_egress`,
`revoke_security_group_ingress`, and `revoke_security_group_egress`.

For more information about VPC security group limits, see [Amazon VPC
Limits](https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html).

We are retiring EC2-Classic. We recommend that you migrate from
EC2-Classic to a VPC. For more information, see [Migrate from
EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_create_security_group(Description, GroupName, VpcId,
      TagSpecifications, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_security_group_:_Description">Description</code></td>
<td><p>[required] A description for the security group.</p>
<p>Constraints: Up to 255 characters in length</p>
<p>Constraints for EC2-Classic: ASCII characters</p>
<p>Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
._-:/()#,@[]+=&amp;;{}!$*</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_security_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the security group.</p>
<p>Constraints: Up to 255 characters in length. Cannot start with <code
style="white-space: pre;">⁠sg-⁠</code>.</p>
<p>Constraints for EC2-Classic: ASCII characters</p>
<p>Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and
._-:/()#,@[]+=&amp;;{}!$*</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_security_group_:_VpcId">VpcId</code></td>
<td><p>[EC2-VPC] The ID of the VPC. Required for EC2-VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_security_group_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to the security group.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_security_group_:_DryRun">DryRun</code></td>
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
      GroupId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$create_security_group(
      Description = "string",
      GroupName = "string",
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
      ),
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example creates a security group for the specified VPC.
    svc$create_security_group(
      Description = "My security group",
      GroupName = "my-security-group",
      VpcId = "vpc-1a2b3c4d"
    )

    ## End(Not run)
