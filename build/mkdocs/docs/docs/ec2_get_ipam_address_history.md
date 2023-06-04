<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_ipam_address_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve historical information about a CIDR within an IPAM scope

### Description

Retrieve historical information about a CIDR within an IPAM scope. For
more information, see [View the history of IP
addresses](https://docs.aws.amazon.com/vpc/latest/ipam/view-history-cidr-ipam.html)
in the *Amazon VPC IPAM User Guide*.

### Usage

    ec2_get_ipam_address_history(DryRun, Cidr, IpamScopeId, VpcId,
      StartTime, EndTime, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_get_ipam_address_history_:_DryRun">DryRun</code></td>
<td><p>A check for whether you have the required permissions for the
action without actually making the request and provides an error
response. If you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_get_ipam_address_history_:_Cidr">Cidr</code></td>
<td><p>[required] The CIDR you want the history of. The CIDR can be an
IPv4 or IPv6 IP address range. If you enter a /16 IPv4 CIDR, you will
get records that match it exactly. You will not get records for any
subnets within the /16 CIDR.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_address_history_:_IpamScopeId">IpamScopeId</code></td>
<td><p>[required] The ID of the IPAM scope that the CIDR is in.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_get_ipam_address_history_:_VpcId">VpcId</code></td>
<td><p>The ID of the VPC you want your history records filtered
by.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_address_history_:_StartTime">StartTime</code></td>
<td><p>The start of the time period for which you are looking for
history. If you omit this option, it will default to the value of
EndTime.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_address_history_:_EndTime">EndTime</code></td>
<td><p>The end of the time period for which you are looking for history.
If you omit this option, it will default to the current time.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_ipam_address_history_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of historical results you would like returned
per page. Defaults to 100.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_ipam_address_history_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HistoryRecords = list(
        list(
          ResourceOwnerId = "string",
          ResourceRegion = "string",
          ResourceType = "eip"|"vpc"|"subnet"|"network-interface"|"instance",
          ResourceId = "string",
          ResourceCidr = "string",
          ResourceName = "string",
          ResourceComplianceStatus = "compliant"|"noncompliant"|"unmanaged"|"ignored",
          ResourceOverlapStatus = "overlapping"|"nonoverlapping"|"ignored",
          VpcId = "string",
          SampledStartTime = as.POSIXct(
            "2015-01-01"
          ),
          SampledEndTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_ipam_address_history(
      DryRun = TRUE|FALSE,
      Cidr = "string",
      IpamScopeId = "string",
      VpcId = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
