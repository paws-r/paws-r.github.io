<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_byoip_cidrs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the IP address ranges that were specified in calls to ProvisionByoipCidr

### Description

Describes the IP address ranges that were specified in calls to
`provision_byoip_cidr`.

To describe the address pools that were created when you provisioned the
address ranges, use `describe_public_ipv_4_pools` or
`describe_ipv_6_pools`.

### Usage

    ec2_describe_byoip_cidrs(DryRun, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_byoip_cidrs_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_byoip_cidrs_:_MaxResults">MaxResults</code></td>
<td><p>[required] The maximum number of results to return with a single
call. To retrieve the remaining results, make another call with the
returned <code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_byoip_cidrs_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ByoipCidrs = list(
        list(
          Cidr = "string",
          Description = "string",
          StatusMessage = "string",
          State = "advertised"|"deprovisioned"|"failed-deprovision"|"failed-provision"|"pending-deprovision"|"pending-provision"|"provisioned"|"provisioned-not-publicly-advertisable"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_byoip_cidrs(
      DryRun = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string"
    )
