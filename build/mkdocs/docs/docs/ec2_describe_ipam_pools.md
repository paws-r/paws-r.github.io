<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_ipam_pools</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get information about your IPAM pools

### Description

Get information about your IPAM pools.

### Usage

    ec2_describe_ipam_pools(DryRun, Filters, MaxResults, NextToken,
      IpamPoolIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_ipam_pools_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_ipam_pools_:_Filters">Filters</code></td>
<td><p>One or more filters for the request. For more information about
filtering, see <a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">Filtering
CLI output</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_ipam_pools_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the request.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_ipam_pools_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_ipam_pools_:_IpamPoolIds">IpamPoolIds</code></td>
<td><p>The IDs of the IPAM pools you would like information on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      IpamPools = list(
        list(
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
    )

### Request syntax

    svc$describe_ipam_pools(
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
      IpamPoolIds = list(
        "string"
      )
    )
