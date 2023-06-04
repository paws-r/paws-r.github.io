<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_disable_address_transfer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables Elastic IP address transfer

### Description

Disables Elastic IP address transfer. For more information, see
[Transfer Elastic IP
addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro)
in the *Amazon Virtual Private Cloud User Guide*.

### Usage

    ec2_disable_address_transfer(AllocationId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_disable_address_transfer_:_AllocationId">AllocationId</code></td>
<td><p>[required] The allocation ID of an Elastic IP address.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_disable_address_transfer_:_DryRun">DryRun</code></td>
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
      AddressTransfer = list(
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
    )

### Request syntax

    svc$disable_address_transfer(
      AllocationId = "string",
      DryRun = TRUE|FALSE
    )
