<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_traffic_mirror_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Traffic Mirror filter

### Description

Creates a Traffic Mirror filter.

A Traffic Mirror filter is a set of rules that defines the traffic to
mirror.

By default, no traffic is mirrored. To mirror traffic, use
`create_traffic_mirror_filter_rule` to add Traffic Mirror rules to the
filter. The rules you add define what traffic gets mirrored. You can
also use `modify_traffic_mirror_filter_network_services` to mirror
supported network services.

### Usage

    ec2_create_traffic_mirror_filter(Description, TagSpecifications, DryRun,
      ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_filter_:_Description">Description</code></td>
<td><p>The description of the Traffic Mirror filter.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_filter_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to assign to a Traffic Mirror filter.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_traffic_mirror_filter_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_traffic_mirror_filter_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrafficMirrorFilter = list(
        TrafficMirrorFilterId = "string",
        IngressFilterRules = list(
          list(
            TrafficMirrorFilterRuleId = "string",
            TrafficMirrorFilterId = "string",
            TrafficDirection = "ingress"|"egress",
            RuleNumber = 123,
            RuleAction = "accept"|"reject",
            Protocol = 123,
            DestinationPortRange = list(
              FromPort = 123,
              ToPort = 123
            ),
            SourcePortRange = list(
              FromPort = 123,
              ToPort = 123
            ),
            DestinationCidrBlock = "string",
            SourceCidrBlock = "string",
            Description = "string"
          )
        ),
        EgressFilterRules = list(
          list(
            TrafficMirrorFilterRuleId = "string",
            TrafficMirrorFilterId = "string",
            TrafficDirection = "ingress"|"egress",
            RuleNumber = 123,
            RuleAction = "accept"|"reject",
            Protocol = 123,
            DestinationPortRange = list(
              FromPort = 123,
              ToPort = 123
            ),
            SourcePortRange = list(
              FromPort = 123,
              ToPort = 123
            ),
            DestinationCidrBlock = "string",
            SourceCidrBlock = "string",
            Description = "string"
          )
        ),
        NetworkServices = list(
          "amazon-dns"
        ),
        Description = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      ),
      ClientToken = "string"
    )

### Request syntax

    svc$create_traffic_mirror_filter(
      Description = "string",
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
      DryRun = TRUE|FALSE,
      ClientToken = "string"
    )
