<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_ipam_resource_discovery</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies a resource discovery

### Description

Modifies a resource discovery. A resource discovery is an IPAM component
that enables IPAM to manage and monitor resources that belong to the
owning account.

### Usage

    ec2_modify_ipam_resource_discovery(DryRun, IpamResourceDiscoveryId,
      Description, AddOperatingRegions, RemoveOperatingRegions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_ipam_resource_discovery_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_ipam_resource_discovery_:_IpamResourceDiscoveryId">IpamResourceDiscoveryId</code></td>
<td><p>[required] A resource discovery ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_ipam_resource_discovery_:_Description">Description</code></td>
<td><p>A resource discovery description.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_ipam_resource_discovery_:_AddOperatingRegions">AddOperatingRegions</code></td>
<td><p>Add operating Regions to the resource discovery. Operating
Regions are Amazon Web Services Regions where the IPAM is allowed to
manage IP address CIDRs. IPAM only discovers and monitors resources in
the Amazon Web Services Regions you select as operating
Regions.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_ipam_resource_discovery_:_RemoveOperatingRegions">RemoveOperatingRegions</code></td>
<td><p>Remove operating Regions.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamResourceDiscovery = list(
        OwnerId = "string",
        IpamResourceDiscoveryId = "string",
        IpamResourceDiscoveryArn = "string",
        IpamResourceDiscoveryRegion = "string",
        Description = "string",
        OperatingRegions = list(
          list(
            RegionName = "string"
          )
        ),
        IsDefault = TRUE|FALSE,
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

    svc$modify_ipam_resource_discovery(
      DryRun = TRUE|FALSE,
      IpamResourceDiscoveryId = "string",
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
