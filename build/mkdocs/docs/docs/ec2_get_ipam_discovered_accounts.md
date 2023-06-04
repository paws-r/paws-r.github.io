<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_ipam_discovered_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets IPAM discovered accounts

### Description

Gets IPAM discovered accounts. A discovered account is an Amazon Web
Services account that is monitored under a resource discovery. If you
have integrated IPAM with Amazon Web Services Organizations, all
accounts in the organization are discovered accounts. Only the IPAM
account can get all discovered accounts in the organization.

### Usage

    ec2_get_ipam_discovered_accounts(DryRun, IpamResourceDiscoveryId,
      DiscoveryRegion, Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_ipam_discovered_accounts_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_discovered_accounts_:_IpamResourceDiscoveryId">IpamResourceDiscoveryId</code></td>
<td><p>[required] A resource discovery ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_discovered_accounts_:_DiscoveryRegion">DiscoveryRegion</code></td>
<td><p>[required] The Amazon Web Services Region that the account
information is returned from.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_discovered_accounts_:_Filters">Filters</code></td>
<td><p>Discovered account filters.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_discovered_accounts_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_discovered_accounts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of discovered accounts to return in one page
of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpamDiscoveredAccounts = list(
        list(
          AccountId = "string",
          DiscoveryRegion = "string",
          FailureReason = list(
            Code = "assume-role-failure"|"throttling-failure"|"unauthorized-failure",
            Message = "string"
          ),
          LastAttemptedDiscoveryTime = as.POSIXct(
            "2015-01-01"
          ),
          LastSuccessfulDiscoveryTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_ipam_discovered_accounts(
      DryRun = TRUE|FALSE,
      IpamResourceDiscoveryId = "string",
      DiscoveryRegion = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
