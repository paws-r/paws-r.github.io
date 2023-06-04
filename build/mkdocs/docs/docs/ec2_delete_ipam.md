<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_ipam</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an IPAM

### Description

Delete an IPAM. Deleting an IPAM removes all monitored data associated
with the IPAM including the historical data for CIDRs.

For more information, see [Delete an
IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/delete-ipam.html) in
the *Amazon VPC IPAM User Guide*.

### Usage

    ec2_delete_ipam(DryRun, IpamId, Cascade)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_ipam_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_ipam_:_IpamId">IpamId</code></td>
<td><p>[required] The ID of the IPAM to delete.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_delete_ipam_:_Cascade">Cascade</code></td>
<td><p>Enables you to quickly delete an IPAM, private scopes, pools in
private scopes, and any allocations in the pools in private scopes. You
cannot delete the IPAM with this option if there is a pool in your
public scope. If you use this option, IPAM does the following:</p>
<ul>
<li><p>Deallocates any CIDRs allocated to VPC resources (such as VPCs)
in pools in private scopes.</p>
<p>No VPC resources are deleted as a result of enabling this option. The
CIDR associated with the resource will no longer be allocated from an
IPAM pool, but the CIDR itself will remain unchanged.</p></li>
<li><p>Deprovisions all IPv4 CIDRs provisioned to IPAM pools in private
scopes.</p></li>
<li><p>Deletes all IPAM pools in private scopes.</p></li>
<li><p>Deletes all non-default private scopes in the IPAM.</p></li>
<li><p>Deletes the default public and private scopes and the
IPAM.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Ipam = list(
        OwnerId = "string",
        IpamId = "string",
        IpamArn = "string",
        IpamRegion = "string",
        PublicDefaultScopeId = "string",
        PrivateDefaultScopeId = "string",
        ScopeCount = 123,
        Description = "string",
        OperatingRegions = list(
          list(
            RegionName = "string"
          )
        ),
        State = "create-in-progress"|"create-complete"|"create-failed"|"modify-in-progress"|"modify-complete"|"modify-failed"|"delete-in-progress"|"delete-complete"|"delete-failed"|"isolate-in-progress"|"isolate-complete"|"restore-in-progress",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        DefaultResourceDiscoveryId = "string",
        DefaultResourceDiscoveryAssociationId = "string",
        ResourceDiscoveryAssociationCount = 123
      )
    )

### Request syntax

    svc$delete_ipam(
      DryRun = TRUE|FALSE,
      IpamId = "string",
      Cascade = TRUE|FALSE
    )
