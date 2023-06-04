<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_cancel_spot_instance_requests</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels one or more Spot Instance requests

### Description

Cancels one or more Spot Instance requests.

Canceling a Spot Instance request does not terminate running Spot
Instances associated with the request.

### Usage

    ec2_cancel_spot_instance_requests(DryRun, SpotInstanceRequestIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_cancel_spot_instance_requests_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_cancel_spot_instance_requests_:_SpotInstanceRequestIds">SpotInstanceRequestIds</code></td>
<td><p>[required] The IDs of the Spot Instance requests.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CancelledSpotInstanceRequests = list(
        list(
          SpotInstanceRequestId = "string",
          State = "active"|"open"|"closed"|"cancelled"|"completed"
        )
      )
    )

### Request syntax

    svc$cancel_spot_instance_requests(
      DryRun = TRUE|FALSE,
      SpotInstanceRequestIds = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example cancels a Spot Instance request.
    svc$cancel_spot_instance_requests(
      SpotInstanceRequestIds = list(
        "sir-08b93456"
      )
    )

    ## End(Not run)
