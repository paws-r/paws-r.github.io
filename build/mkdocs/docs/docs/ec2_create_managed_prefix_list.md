<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_managed_prefix_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a managed prefix list

### Description

Creates a managed prefix list. You can specify one or more entries for
the prefix list. Each entry consists of a CIDR block and an optional
description.

### Usage

    ec2_create_managed_prefix_list(DryRun, PrefixListName, Entries,
      MaxEntries, TagSpecifications, AddressFamily, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_create_managed_prefix_list_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_managed_prefix_list_:_PrefixListName">PrefixListName</code></td>
<td><p>[required] A name for the prefix list.</p>
<p>Constraints: Up to 255 characters in length. The name cannot start
with <code>com.amazonaws</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_managed_prefix_list_:_Entries">Entries</code></td>
<td><p>One or more entries for the prefix list.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_managed_prefix_list_:_MaxEntries">MaxEntries</code></td>
<td><p>[required] The maximum number of entries for the prefix
list.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_managed_prefix_list_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The tags to apply to the prefix list during creation.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_managed_prefix_list_:_AddressFamily">AddressFamily</code></td>
<td><p>[required] The IP address type.</p>
<p>Valid Values: <code>IPv4</code> | <code>IPv6</code></p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_managed_prefix_list_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier you provide to ensure the
idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p>
<p>Constraints: Up to 255 UTF-8 characters in length.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PrefixList = list(
        PrefixListId = "string",
        AddressFamily = "string",
        State = "create-in-progress"|"create-complete"|"create-failed"|"modify-in-progress"|"modify-complete"|"modify-failed"|"restore-in-progress"|"restore-complete"|"restore-failed"|"delete-in-progress"|"delete-complete"|"delete-failed",
        StateMessage = "string",
        PrefixListArn = "string",
        PrefixListName = "string",
        MaxEntries = 123,
        Version = 123,
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        OwnerId = "string"
      )
    )

### Request syntax

    svc$create_managed_prefix_list(
      DryRun = TRUE|FALSE,
      PrefixListName = "string",
      Entries = list(
        list(
          Cidr = "string",
          Description = "string"
        )
      ),
      MaxEntries = 123,
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
      AddressFamily = "string",
      ClientToken = "string"
    )
