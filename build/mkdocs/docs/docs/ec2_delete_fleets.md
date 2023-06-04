<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_fleets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified EC2 Fleets

### Description

Deletes the specified EC2 Fleets.

After you delete an EC2 Fleet, it launches no new instances.

You must also specify whether a deleted EC2 Fleet should terminate its
instances. If you choose to terminate the instances, the EC2 Fleet
enters the `deleted_terminating` state. Otherwise, the EC2 Fleet enters
the `deleted_running` state, and the instances continue to run until
they are interrupted or you terminate them manually.

For `instant` fleets, EC2 Fleet must terminate the instances when the
fleet is deleted. A deleted `instant` fleet with running instances is
not supported.

**Restrictions**

-   You can delete up to 25 `instant` fleets in a single request. If you
    exceed this number, no `instant` fleets are deleted and an error is
    returned. There is no restriction on the number of fleets of type
    `maintain` or `request` that can be deleted in a single request.

-   Up to 1000 instances can be terminated in a single request to delete
    `instant` fleets.

For more information, see [Delete an EC2
Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#delete-fleet)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_delete_fleets(DryRun, FleetIds, TerminateInstances)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_delete_fleets_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_delete_fleets_:_FleetIds">FleetIds</code></td>
<td><p>[required] The IDs of the EC2 Fleets.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_delete_fleets_:_TerminateInstances">TerminateInstances</code></td>
<td><p>[required] Indicates whether to terminate the associated
instances when the EC2 Fleet is deleted. The default is to terminate the
instances.</p>
<p>To let the instances continue to run after the EC2 Fleet is deleted,
specify <code>no-terminate-instances</code>. Supported only for fleets
of type <code>maintain</code> and <code>request</code>.</p>
<p>For <code>instant</code> fleets, you cannot specify
<code>NoTerminateInstances</code>. A deleted <code>instant</code> fleet
with running instances is not supported.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SuccessfulFleetDeletions = list(
        list(
          CurrentFleetState = "submitted"|"active"|"deleted"|"failed"|"deleted_running"|"deleted_terminating"|"modifying",
          PreviousFleetState = "submitted"|"active"|"deleted"|"failed"|"deleted_running"|"deleted_terminating"|"modifying",
          FleetId = "string"
        )
      ),
      UnsuccessfulFleetDeletions = list(
        list(
          Error = list(
            Code = "fleetIdDoesNotExist"|"fleetIdMalformed"|"fleetNotInDeletableState"|"unexpectedError",
            Message = "string"
          ),
          FleetId = "string"
        )
      )
    )

### Request syntax

    svc$delete_fleets(
      DryRun = TRUE|FALSE,
      FleetIds = list(
        "string"
      ),
      TerminateInstances = TRUE|FALSE
    )
