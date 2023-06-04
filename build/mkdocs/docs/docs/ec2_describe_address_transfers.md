<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_address_transfers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an Elastic IP address transfer

### Description

Describes an Elastic IP address transfer. For more information, see
[Transfer Elastic IP
addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_describe_address_transfers(AllocationIds, NextToken, MaxResults,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_address_transfers_:_AllocationIds">AllocationIds</code></td>
<td><p>The allocation IDs of Elastic IP addresses.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_address_transfers_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token from a previous request to retrieve
the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_address_transfers_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of address transfers to return in one page of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_address_transfers_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AddressTransfers = list(
        list(
          PublicIp = "string",
          AllocationId = "string",
          TransferAccountId = "string",
          TransferOfferExpirationTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          TransferOfferAcceptedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          AddressTransferStatus = "pending"|"disabled"|"accepted"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_address_transfers(
      AllocationIds = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      DryRun = TRUE|FALSE
    )
