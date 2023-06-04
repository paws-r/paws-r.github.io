<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_ipam_resource_discoveries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes IPAM resource discoveries

### Description

Describes IPAM resource discoveries. A resource discovery is an IPAM
component that enables IPAM to manage and monitor resources that belong
to the owning account.

### Usage

    ec2_describe_ipam_resource_discoveries(DryRun, IpamResourceDiscoveryIds,
      NextToken, MaxResults, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_ipam_resource_discoveries_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_ipam_resource_discoveries_:_IpamResourceDiscoveryIds">IpamResourceDiscoveryIds</code></td>
<td><p>The IPAM resource discovery IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_ipam_resource_discoveries_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_ipam_resource_discoveries_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of resource discoveries to return in one page
of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_ipam_resource_discoveries_:_Filters">Filters</code></td>
<td><p>The resource discovery filters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamResourceDiscoveries = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_ipam_resource_discoveries(
      DryRun = TRUE|FALSE,
      IpamResourceDiscoveryIds = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )
