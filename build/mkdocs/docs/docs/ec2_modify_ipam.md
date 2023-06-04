<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_ipam</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modify the configurations of an IPAM

### Description

Modify the configurations of an IPAM.

### Usage

    ec2_modify_ipam(DryRun, IpamId, Description, AddOperatingRegions,
      RemoveOperatingRegions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_modify_ipam_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_modify_ipam_:_IpamId">IpamId</code></td>
<td><p>[required] The ID of the IPAM you want to modify.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_modify_ipam_:_Description">Description</code></td>
<td><p>The description of the IPAM you want to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_ipam_:_AddOperatingRegions">AddOperatingRegions</code></td>
<td><p>Choose the operating Regions for the IPAM. Operating Regions are
Amazon Web Services Regions where the IPAM is allowed to manage IP
address CIDRs. IPAM only discovers and monitors resources in the Amazon
Web Services Regions you select as operating Regions.</p>
<p>For more information about operating Regions, see <a
href="https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html">Create
an IPAM</a> in the <em>Amazon VPC IPAM User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_ipam_:_RemoveOperatingRegions">RemoveOperatingRegions</code></td>
<td><p>The operating Regions to remove.</p></td>
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

    svc$modify_ipam(
      DryRun = TRUE|FALSE,
      IpamId = "string",
      Description = "string",
      AddOperatingRegions = list(
        list(
          RegionName = "string"
        )
      ),
      RemoveOperatingRegions = list(
        list(
          RegionName = "string"
        )
      )
    )
