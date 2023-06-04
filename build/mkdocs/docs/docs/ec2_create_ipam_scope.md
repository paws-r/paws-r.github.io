<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_ipam_scope</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an IPAM scope

### Description

Create an IPAM scope. In IPAM, a scope is the highest-level container
within IPAM. An IPAM contains two default scopes. Each scope represents
the IP space for a single network. The private scope is intended for all
private IP address space. The public scope is intended for all public IP
address space. Scopes enable you to reuse IP addresses across multiple
unconnected networks without causing IP address overlap or conflict.

For more information, see [Add a
scope](https://docs.aws.amazon.com/vpc/latest/ipam/add-scope-ipam.html)
in the *Amazon VPC IPAM User Guide*.

### Usage

    ec2_create_ipam_scope(DryRun, IpamId, Description, TagSpecifications,
      ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_ipam_scope_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_ipam_scope_:_IpamId">IpamId</code></td>
<td><p>[required] The ID of the IPAM for which you're creating this
scope.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_ipam_scope_:_Description">Description</code></td>
<td><p>A description for the scope you're creating.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_ipam_scope_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The key/value combination of a tag assigned to the resource. Use
the tag key in the filter name and the tag value as the filter value.
For example, to find all resources that have a tag with the key
<code>Owner</code> and the value <code>TeamA</code>, specify
<code>tag:Owner</code> for the filter name and <code>TeamA</code> for
the filter value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_ipam_scope_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamScope = list(
        OwnerId = "string",
        IpamScopeId = "string",
        IpamScopeArn = "string",
        IpamArn = "string",
        IpamRegion = "string",
        IpamScopeType = "public"|"private",
        IsDefault = TRUE|FALSE,
        Description = "string",
        PoolCount = 123,
        State = "create-in-progress"|"create-complete"|"create-failed"|"modify-in-progress"|"modify-complete"|"modify-failed"|"delete-in-progress"|"delete-complete"|"delete-failed"|"isolate-in-progress"|"isolate-complete"|"restore-in-progress",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_ipam_scope(
      DryRun = TRUE|FALSE,
      IpamId = "string",
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
      ClientToken = "string"
    )
