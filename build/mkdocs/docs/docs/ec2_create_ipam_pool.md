<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_ipam_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create an IP address pool for Amazon VPC IP Address Manager (IPAM)

### Description

Create an IP address pool for Amazon VPC IP Address Manager (IPAM). In
IPAM, a pool is a collection of contiguous IP addresses CIDRs. Pools
enable you to organize your IP addresses according to your routing and
security needs. For example, if you have separate routing and security
needs for development and production applications, you can create a pool
for each.

For more information, see [Create a top-level
pool](https://docs.aws.amazon.com/vpc/latest/ipam/create-top-ipam.html)
in the *Amazon VPC IPAM User Guide*.

### Usage

    ec2_create_ipam_pool(DryRun, IpamScopeId, Locale, SourceIpamPoolId,
      Description, AddressFamily, AutoImport, PubliclyAdvertisable,
      AllocationMinNetmaskLength, AllocationMaxNetmaskLength,
      AllocationDefaultNetmaskLength, AllocationResourceTags,
      TagSpecifications, ClientToken, AwsService, PublicIpSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_ipam_pool_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_ipam_pool_:_IpamScopeId">IpamScopeId</code></td>
<td><p>[required] The ID of the scope in which you would like to create
the IPAM pool.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_ipam_pool_:_Locale">Locale</code></td>
<td><p>In IPAM, the locale is the Amazon Web Services Region where you
want to make an IPAM pool available for allocations. Only resources in
the same Region as the locale of the pool can get IP address allocations
from the pool. You can only allocate a CIDR for a VPC, for example, from
an IPAM pool that shares a locale with the VPC’s Region. Note that once
you choose a Locale for a pool, you cannot modify it. If you do not
choose a locale, resources in Regions others than the IPAM's home region
cannot use CIDRs from this pool.</p>
<p>Possible values: Any Amazon Web Services Region, such as
us-east-1.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_ipam_pool_:_SourceIpamPoolId">SourceIpamPoolId</code></td>
<td><p>The ID of the source IPAM pool. Use this option to create a pool
within an existing pool. Note that the CIDR you provision for the pool
within the source pool must be available in the source pool's CIDR
range.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_ipam_pool_:_Description">Description</code></td>
<td><p>A description for the IPAM pool.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_ipam_pool_:_AddressFamily">AddressFamily</code></td>
<td><p>[required] The IP protocol assigned to this IPAM pool. You must
choose either IPv4 or IPv6 protocol for a pool.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_ipam_pool_:_AutoImport">AutoImport</code></td>
<td><p>If selected, IPAM will continuously look for resources within the
CIDR range of this pool and automatically import them as allocations
into your IPAM. The CIDRs that will be allocated for these resources
must not already be allocated to other resources in order for the import
to succeed. IPAM will import a CIDR regardless of its compliance with
the pool's allocation rules, so a resource might be imported and
subsequently marked as noncompliant. If IPAM discovers multiple CIDRs
that overlap, IPAM will import the largest CIDR only. If IPAM discovers
multiple CIDRs with matching CIDRs, IPAM will randomly import one of
them only.</p>
<p>A locale must be set on the pool for this feature to work.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_ipam_pool_:_PubliclyAdvertisable">PubliclyAdvertisable</code></td>
<td><p>Determines if the pool is publicly advertisable. This option is
not available for pools with AddressFamily set to
<code>ipv4</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_ipam_pool_:_AllocationMinNetmaskLength">AllocationMinNetmaskLength</code></td>
<td><p>The minimum netmask length required for CIDR allocations in this
IPAM pool to be compliant. The minimum netmask length must be less than
the maximum netmask length. Possible netmask lengths for IPv4 addresses
are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 -
128.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_ipam_pool_:_AllocationMaxNetmaskLength">AllocationMaxNetmaskLength</code></td>
<td><p>The maximum netmask length possible for CIDR allocations in this
IPAM pool to be compliant. The maximum netmask length must be greater
than the minimum netmask length. Possible netmask lengths for IPv4
addresses are 0 - 32. Possible netmask lengths for IPv6 addresses are 0
- 128.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_ipam_pool_:_AllocationDefaultNetmaskLength">AllocationDefaultNetmaskLength</code></td>
<td><p>The default netmask length for allocations added to this pool.
If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you
enter 16 here, new allocations will default to 10.0.0.0/16.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_ipam_pool_:_AllocationResourceTags">AllocationResourceTags</code></td>
<td><p>Tags that are required for resources that use CIDRs from this
IPAM pool. Resources that do not have these tags will not be allowed to
allocate space from the pool. If the resources have their tags changed
after they have allocated space or if the allocation tagging
requirements are changed on the pool, the resource may be marked as
noncompliant.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_ipam_pool_:_TagSpecifications">TagSpecifications</code></td>
<td><p>The key/value combination of a tag assigned to the resource. Use
the tag key in the filter name and the tag value as the filter value.
For example, to find all resources that have a tag with the key
<code>Owner</code> and the value <code>TeamA</code>, specify
<code>tag:Owner</code> for the filter name and <code>TeamA</code> for
the filter value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_ipam_pool_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. For more information, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring
Idempotency</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_create_ipam_pool_:_AwsService">AwsService</code></td>
<td><p>Limits which service in Amazon Web Services that the pool can be
used in. "ec2", for example, allows users to use space for Elastic IP
addresses and VPCs.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_create_ipam_pool_:_PublicIpSource">PublicIpSource</code></td>
<td><p>The IP address source for pools in the public scope. Only used
for provisioning IP address CIDRs to pools in the public scope. Default
is <code>byoip</code>. For more information, see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/intro-create-ipv6-pools.html">Create
IPv6 pools</a> in the <em>Amazon VPC IPAM User Guide</em>. By default,
you can add only one Amazon-provided IPv6 CIDR block to a top-level IPv6
pool if PublicIpSource is <code>amazon</code>. For information on
increasing the default limit, see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html">Quotas
for your IPAM</a> in the <em>Amazon VPC IPAM User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamPool = list(
        OwnerId = "string",
        IpamPoolId = "string",
        SourceIpamPoolId = "string",
        IpamPoolArn = "string",
        IpamScopeArn = "string",
        IpamScopeType = "public"|"private",
        IpamArn = "string",
        IpamRegion = "string",
        Locale = "string",
        PoolDepth = 123,
        State = "create-in-progress"|"create-complete"|"create-failed"|"modify-in-progress"|"modify-complete"|"modify-failed"|"delete-in-progress"|"delete-complete"|"delete-failed"|"isolate-in-progress"|"isolate-complete"|"restore-in-progress",
        StateMessage = "string",
        Description = "string",
        AutoImport = TRUE|FALSE,
        PubliclyAdvertisable = TRUE|FALSE,
        AddressFamily = "ipv4"|"ipv6",
        AllocationMinNetmaskLength = 123,
        AllocationMaxNetmaskLength = 123,
        AllocationDefaultNetmaskLength = 123,
        AllocationResourceTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        AwsService = "ec2",
        PublicIpSource = "amazon"|"byoip"
      )
    )

### Request syntax

    svc$create_ipam_pool(
      DryRun = TRUE|FALSE,
      IpamScopeId = "string",
      Locale = "string",
      SourceIpamPoolId = "string",
      Description = "string",
      AddressFamily = "ipv4"|"ipv6",
      AutoImport = TRUE|FALSE,
      PubliclyAdvertisable = TRUE|FALSE,
      AllocationMinNetmaskLength = 123,
      AllocationMaxNetmaskLength = 123,
      AllocationDefaultNetmaskLength = 123,
      AllocationResourceTags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
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
      AwsService = "ec2",
      PublicIpSource = "amazon"|"byoip"
    )
