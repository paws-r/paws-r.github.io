<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_ipam_resource_discovery_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes resource discovery association with an Amazon VPC IPAM

### Description

Describes resource discovery association with an Amazon VPC IPAM. An
associated resource discovery is a resource discovery that has been
associated with an IPAM..

### Usage

    ec2_describe_ipam_resource_discovery_associations(DryRun,
      IpamResourceDiscoveryAssociationIds, NextToken, MaxResults, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_ipam_resource_discovery_associations_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_ipam_resource_discovery_associations_:_IpamResourceDiscoveryAssociationIds">IpamResourceDiscoveryAssociationIds</code></td>
<td><p>The resource discovery association IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_ipam_resource_discovery_associations_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_ipam_resource_discovery_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of resource discovery associations to return
in one page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_ipam_resource_discovery_associations_:_Filters">Filters</code></td>
<td><p>The resource discovery association filters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamResourceDiscoveryAssociations = list(
        list(
          OwnerId = "string",
          IpamResourceDiscoveryAssociationId = "string",
          IpamResourceDiscoveryAssociationArn = "string",
          IpamResourceDiscoveryId = "string",
          IpamId = "string",
          IpamArn = "string",
          IpamRegion = "string",
          IsDefault = TRUE|FALSE,
          ResourceDiscoveryStatus = "active"|"not-found",
          State = "associate-in-progress"|"associate-complete"|"associate-failed"|"disassociate-in-progress"|"disassociate-complete"|"disassociate-failed"|"isolate-in-progress"|"isolate-complete"|"restore-in-progress",
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

    svc$describe_ipam_resource_discovery_associations(
      DryRun = TRUE|FALSE,
      IpamResourceDiscoveryAssociationIds = list(
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
