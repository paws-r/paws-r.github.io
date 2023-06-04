<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_list_byoip_cidrs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the IP address ranges that were specified in calls to ProvisionByoipCidr, including the current state and a history of state changes

### Description

Lists the IP address ranges that were specified in calls to
`provision_byoip_cidr`, including the current state and a history of
state changes.

### Usage

    globalaccelerator_list_byoip_cidrs(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_list_byoip_cidrs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_list_byoip_cidrs_:_NextToken">NextToken</code></td>
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
          State = "PENDING_PROVISIONING"|"READY"|"PENDING_ADVERTISING"|"ADVERTISING"|"PENDING_WITHDRAWING"|"PENDING_DEPROVISIONING"|"DEPROVISIONED"|"FAILED_PROVISION"|"FAILED_ADVERTISING"|"FAILED_WITHDRAW"|"FAILED_DEPROVISION",
          Events = list(
            list(
              Message = "string",
              Timestamp = as.POSIXct(
                "2015-01-01"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_byoip_cidrs(
      MaxResults = 123,
      NextToken = "string"
    )
