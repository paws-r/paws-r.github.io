<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_ipam_pool_cidrs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the CIDRs provisioned to an IPAM pool

### Description

Get the CIDRs provisioned to an IPAM pool.

### Usage

    ec2_get_ipam_pool_cidrs(DryRun, IpamPoolId, Filters, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_get_ipam_pool_cidrs_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_pool_cidrs_:_IpamPoolId">IpamPoolId</code></td>
<td><p>[required] The ID of the IPAM pool you want the CIDR
for.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_get_ipam_pool_cidrs_:_Filters">Filters</code></td>
<td><p>One or more filters for the request. For more information about
filtering, see <a
href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">Filtering
CLI output</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_pool_cidrs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the request.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_get_ipam_pool_cidrs_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamPoolCidrs = list(
        list(
          Cidr = "string",
          State = "pending-provision"|"provisioned"|"failed-provision"|"pending-deprovision"|"deprovisioned"|"failed-deprovision"|"pending-import"|"failed-import",
          FailureReason = list(
            Code = "cidr-not-available"|"limit-exceeded",
            Message = "string"
          ),
          IpamPoolCidrId = "string",
          NetmaskLength = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_ipam_pool_cidrs(
      DryRun = TRUE|FALSE,
      IpamPoolId = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
