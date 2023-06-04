<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_allocate_hosts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allocates a Dedicated Host to your account

### Description

Allocates a Dedicated Host to your account. At a minimum, specify the
supported instance type or instance family, the Availability Zone in
which to allocate the host, and the number of hosts to allocate.

### Usage

    ec2_allocate_hosts(AutoPlacement, AvailabilityZone, ClientToken,
      InstanceType, InstanceFamily, Quantity, TagSpecifications, HostRecovery,
      OutpostArn, HostMaintenance)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_allocate_hosts_:_AutoPlacement">AutoPlacement</code></td>
<td><p>Indicates whether the host accepts any untargeted instance
launches that match its instance type configuration, or if it only
accepts Host tenancy instance launches that specify its unique host ID.
For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/how-dedicated-hosts-work.html#dedicated-hosts-understanding">Understanding
auto-placement and affinity</a> in the <em>Amazon EC2 User
Guide</em>.</p>
<p>Default: <code>on</code></p></td>
</tr>
<tr class="even">
<td><code
id="ec2_allocate_hosts_:_AvailabilityZone">AvailabilityZone</code></td>
<td><p>[required] The Availability Zone in which to allocate the
Dedicated Host.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_allocate_hosts_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_allocate_hosts_:_InstanceType">InstanceType</code></td>
<td><p>Specifies the instance type to be supported by the Dedicated
Hosts. If you specify an instance type, the Dedicated Hosts support
instances of the specified instance type only.</p>
<p>If you want the Dedicated Hosts to support multiple instance types in
a specific instance family, omit this parameter and specify
<strong>InstanceFamily</strong> instead. You cannot specify
<strong>InstanceType</strong> and <strong>InstanceFamily</strong> in the
same request.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_allocate_hosts_:_InstanceFamily">InstanceFamily</code></td>
<td><p>Specifies the instance family to be supported by the Dedicated
Hosts. If you specify an instance family, the Dedicated Hosts support
multiple instance types within that instance family.</p>
<p>If you want the Dedicated Hosts to support a specific instance type
only, omit this parameter and specify <strong>InstanceType</strong>
instead. You cannot specify <strong>InstanceFamily</strong> and
<strong>InstanceType</strong> in the same request.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_allocate_hosts_:_Quantity">Quantity</code></td>
<td><p>[required] The number of Dedicated Hosts to allocate to your
account with these parameters.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_allocate_hosts_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the Dedicated Host during creation.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_allocate_hosts_:_HostRecovery">HostRecovery</code></td>
<td><p>Indicates whether to enable or disable host recovery for the
Dedicated Host. Host recovery is disabled by default. For more
information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-recovery.html">Host
recovery</a> in the <em>Amazon EC2 User Guide</em>.</p>
<p>Default: <code>off</code></p></td>
</tr>
<tr class="odd">
<td><code id="ec2_allocate_hosts_:_OutpostArn">OutpostArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the Amazon Web Services Outpost
on which to allocate the Dedicated Host.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_allocate_hosts_:_HostMaintenance">HostMaintenance</code></td>
<td><p>Indicates whether to enable or disable host maintenance for the
Dedicated Host. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-maintenance.html">Host
maintenance</a> in the <em>Amazon EC2 User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HostIds = list(
        "string"
      )
    )

### Request syntax

    svc$allocate_hosts(
      AutoPlacement = "on"|"off",
      AvailabilityZone = "string",
      ClientToken = "string",
      InstanceType = "string",
      InstanceFamily = "string",
      Quantity = 123,
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
      HostRecovery = "on"|"off",
      OutpostArn = "string",
      HostMaintenance = "on"|"off"
    )
