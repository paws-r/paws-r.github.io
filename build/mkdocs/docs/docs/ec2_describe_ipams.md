<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_ipams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get information about your IPAM pools

### Description

Get information about your IPAM pools.

For more information, see [What is
IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/) in the *Amazon VPC
IPAM User Guide*.

### Usage

    ec2_describe_ipams(DryRun, Filters, MaxResults, NextToken, IpamIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_ipams_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_ipams_:_Filters">Filters</code></td>
<td><p>One or more filters for the request. For more information about
filtering, see <a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">Filtering
CLI output</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_ipams_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the request.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_ipams_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_ipams_:_IpamIds">IpamIds</code></td>
<td><p>The IDs of the IPAMs you want information on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Ipams = list(
        list(
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
    )

### Request syntax

    svc$describe_ipams(
      DryRun = TRUE|FALSE,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      IpamIds = list(
        "string"
      )
    )
