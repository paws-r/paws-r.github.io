<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_network_insights_path</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a path to analyze for reachability

### Description

Creates a path to analyze for reachability.

Reachability Analyzer enables you to analyze and debug network
reachability between two resources in your virtual private cloud (VPC).
For more information, see the [Reachability Analyzer
Guide](https://docs.aws.amazon.com/vpc/latest/reachability/).

### Usage

    ec2_create_network_insights_path(SourceIp, DestinationIp, Source,
      Destination, Protocol, DestinationPort, TagSpecifications, DryRun,
      ClientToken, FilterAtSource, FilterAtDestination)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_network_insights_path_:_SourceIp">SourceIp</code></td>
<td><p>The IP address of the source.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_insights_path_:_DestinationIp">DestinationIp</code></td>
<td><p>The IP address of the destination.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_insights_path_:_Source">Source</code></td>
<td><p>[required] The ID or ARN of the source. If the resource is in
another account, you must specify an ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_insights_path_:_Destination">Destination</code></td>
<td><p>The ID or ARN of the destination. If the resource is in another
account, you must specify an ARN.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_insights_path_:_Protocol">Protocol</code></td>
<td><p>[required] The protocol.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_insights_path_:_DestinationPort">DestinationPort</code></td>
<td><p>The destination port.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_insights_path_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to add to the path.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_insights_path_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_insights_path_:_ClientToken">ClientToken</code></td>
<td><p>[required] Unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">How
to ensure idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_network_insights_path_:_FilterAtSource">FilterAtSource</code></td>
<td><p>Scopes the analysis to network paths that match specific filters
at the source. If you specify this parameter, you can't specify the
parameters for the source IP address or the destination port.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_network_insights_path_:_FilterAtDestination">FilterAtDestination</code></td>
<td><p>Scopes the analysis to network paths that match specific filters
at the destination. If you specify this parameter, you can't specify the
parameter for the destination IP address.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NetworkInsightsPath = list(
        NetworkInsightsPathId = "string",
        NetworkInsightsPathArn = "string",
        CreatedDate = as.POSIXct(
          "2015-01-01"
        ),
        Source = "string",
        Destination = "string",
        SourceArn = "string",
        DestinationArn = "string",
        SourceIp = "string",
        DestinationIp = "string",
        Protocol = "tcp"|"udp",
        DestinationPort = 123,
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        FilterAtSource = list(
          SourceAddress = "string",
          SourcePortRange = list(
            FromPort = 123,
            ToPort = 123
          ),
          DestinationAddress = "string",
          DestinationPortRange = list(
            FromPort = 123,
            ToPort = 123
          )
        ),
        FilterAtDestination = list(
          SourceAddress = "string",
          SourcePortRange = list(
            FromPort = 123,
            ToPort = 123
          ),
          DestinationAddress = "string",
          DestinationPortRange = list(
            FromPort = 123,
            ToPort = 123
          )
        )
      )
    )

### Request syntax

    svc$create_network_insights_path(
      SourceIp = "string",
      DestinationIp = "string",
      Source = "string",
      Destination = "string",
      Protocol = "tcp"|"udp",
      DestinationPort = 123,
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
      ClientToken = "string",
      FilterAtSource = list(
        SourceAddress = "string",
        SourcePortRange = list(
          FromPort = 123,
          ToPort = 123
        ),
        DestinationAddress = "string",
        DestinationPortRange = list(
          FromPort = 123,
          ToPort = 123
        )
      ),
      FilterAtDestination = list(
        SourceAddress = "string",
        SourcePortRange = list(
          FromPort = 123,
          ToPort = 123
        ),
        DestinationAddress = "string",
        DestinationPortRange = list(
          FromPort = 123,
          ToPort = 123
        )
      )
    )
