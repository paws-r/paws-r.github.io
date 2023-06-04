<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_queued_reserved_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the queued purchases for the specified Reserved Instances

### Description

Deletes the queued purchases for the specified Reserved Instances.

### Usage

    ec2_delete_queued_reserved_instances(DryRun, ReservedInstancesIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_queued_reserved_instances_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_queued_reserved_instances_:_ReservedInstancesIds">ReservedInstancesIds</code></td>
<td><p>[required] The IDs of the Reserved Instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SuccessfulQueuedPurchaseDeletions = list(
        list(
          ReservedInstancesId = "string"
        )
      ),
      FailedQueuedPurchaseDeletions = list(
        list(
          Error = list(
            Code = "reserved-instances-id-invalid"|"reserved-instances-not-in-queued-state"|"unexpected-error",
            Message = "string"
          ),
          ReservedInstancesId = "string"
        )
      )
    )

### Request syntax

    svc$delete_queued_reserved_instances(
      DryRun = TRUE|FALSE,
      ReservedInstancesIds = list(
        "string"
      )
    )
