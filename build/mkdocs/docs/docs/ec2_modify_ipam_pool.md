<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_ipam_pool</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modify the configurations of an IPAM pool

### Description

Modify the configurations of an IPAM pool.

For more information, see [Modify a
pool](https://docs.aws.amazon.com/vpc/latest/ipam/mod-pool-ipam.html) in
the *Amazon VPC IPAM User Guide*.

### Usage

    ec2_modify_ipam_pool(DryRun, IpamPoolId, Description, AutoImport,
      AllocationMinNetmaskLength, AllocationMaxNetmaskLength,
      AllocationDefaultNetmaskLength, ClearAllocationDefaultNetmaskLength,
      AddAllocationResourceTags, RemoveAllocationResourceTags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_modify_ipam_pool_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_ipam_pool_:_IpamPoolId">IpamPoolId</code></td>
<td><p>[required] The ID of the IPAM pool you want to modify.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_ipam_pool_:_Description">Description</code></td>
<td><p>The description of the IPAM pool you want to modify.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_ipam_pool_:_AutoImport">AutoImport</code></td>
<td><p>If true, IPAM will continuously look for resources within the
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
<tr class="odd">
<td><code
id="ec2_modify_ipam_pool_:_AllocationMinNetmaskLength">AllocationMinNetmaskLength</code></td>
<td><p>The minimum netmask length required for CIDR allocations in this
IPAM pool to be compliant. Possible netmask lengths for IPv4 addresses
are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128. The
minimum netmask length must be less than the maximum netmask
length.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_ipam_pool_:_AllocationMaxNetmaskLength">AllocationMaxNetmaskLength</code></td>
<td><p>The maximum netmask length possible for CIDR allocations in this
IPAM pool to be compliant. Possible netmask lengths for IPv4 addresses
are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.The
maximum netmask length must be greater than the minimum netmask
length.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_ipam_pool_:_AllocationDefaultNetmaskLength">AllocationDefaultNetmaskLength</code></td>
<td><p>The default netmask length for allocations added to this pool.
If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you
enter 16 here, new allocations will default to 10.0.0.0/16.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_ipam_pool_:_ClearAllocationDefaultNetmaskLength">ClearAllocationDefaultNetmaskLength</code></td>
<td><p>Clear the default netmask length allocation rule for this
pool.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_ipam_pool_:_AddAllocationResourceTags">AddAllocationResourceTags</code></td>
<td><p>Add tag allocation rules to a pool. For more information about
allocation rules, see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/create-top-ipam.html">Create
a top-level pool</a> in the <em>Amazon VPC IPAM User
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_ipam_pool_:_RemoveAllocationResourceTags">RemoveAllocationResourceTags</code></td>
<td><p>Remove tag allocation rules from a pool.</p></td>
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

    svc$modify_ipam_pool(
      DryRun = TRUE|FALSE,
      IpamPoolId = "string",
      Description = "string",
      AutoImport = TRUE|FALSE,
      AllocationMinNetmaskLength = 123,
      AllocationMaxNetmaskLength = 123,
      AllocationDefaultNetmaskLength = 123,
      ClearAllocationDefaultNetmaskLength = TRUE|FALSE,
      AddAllocationResourceTags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      RemoveAllocationResourceTags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
