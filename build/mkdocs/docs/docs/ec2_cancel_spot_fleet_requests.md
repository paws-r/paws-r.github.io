<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_cancel_spot_fleet_requests</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the specified Spot Fleet requests

### Description

Cancels the specified Spot Fleet requests.

After you cancel a Spot Fleet request, the Spot Fleet launches no new
instances.

You must also specify whether a canceled Spot Fleet request should
terminate its instances. If you choose to terminate the instances, the
Spot Fleet request enters the `cancelled_terminating` state. Otherwise,
the Spot Fleet request enters the `cancelled_running` state and the
instances continue to run until they are interrupted or you terminate
them manually.

### Usage

    ec2_cancel_spot_fleet_requests(DryRun, SpotFleetRequestIds,
      TerminateInstances)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_cancel_spot_fleet_requests_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_cancel_spot_fleet_requests_:_SpotFleetRequestIds">SpotFleetRequestIds</code></td>
<td><p>[required] The IDs of the Spot Fleet requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_cancel_spot_fleet_requests_:_TerminateInstances">TerminateInstances</code></td>
<td><p>[required] Indicates whether to terminate the associated
instances when the Spot Fleet request is canceled. The default is to
terminate the instances.</p>
<p>To let the instances continue to run after the Spot Fleet request is
canceled, specify <code>no-terminate-instances</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SuccessfulFleetRequests = list(
        list(
          CurrentSpotFleetRequestState = "submitted"|"active"|"cancelled"|"failed"|"cancelled_running"|"cancelled_terminating"|"modifying",
          PreviousSpotFleetRequestState = "submitted"|"active"|"cancelled"|"failed"|"cancelled_running"|"cancelled_terminating"|"modifying",
          SpotFleetRequestId = "string"
        )
      ),
      UnsuccessfulFleetRequests = list(
        list(
          Error = list(
            Code = "fleetRequestIdDoesNotExist"|"fleetRequestIdMalformed"|"fleetRequestNotInCancellableState"|"unexpectedError",
            Message = "string"
          ),
          SpotFleetRequestId = "string"
        )
      )
    )

### Request syntax

    svc$cancel_spot_fleet_requests(
      DryRun = TRUE|FALSE,
      SpotFleetRequestIds = list(
        "string"
      ),
      TerminateInstances = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example cancels the specified Spot fleet request and terminates its
    # associated Spot Instances.
    svc$cancel_spot_fleet_requests(
      SpotFleetRequestIds = list(
        "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
      ),
      TerminateInstances = TRUE
    )

    # This example cancels the specified Spot fleet request without
    # terminating its associated Spot Instances.
    svc$cancel_spot_fleet_requests(
      SpotFleetRequestIds = list(
        "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
      ),
      TerminateInstances = FALSE
    )

    ## End(Not run)
