<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_delete_worker_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The DeleteWorkerBlock operation allows you to reinstate a blocked Worker to work on your HITs

### Description

The `delete_worker_block` operation allows you to reinstate a blocked
Worker to work on your HITs. This operation reverses the effects of the
CreateWorkerBlock operation. You need the Worker ID to use this
operation. If the Worker ID is missing or invalid, this operation fails
and returns the message “WorkerId is invalid.” If the specified Worker
is not blocked, this operation returns successfully.

### Usage

    mturk_delete_worker_block(WorkerId, Reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_delete_worker_block_:_WorkerId">WorkerId</code></td>
<td><p>[required] The ID of the Worker to unblock.</p></td>
</tr>
<tr class="even">
<td><code id="mturk_delete_worker_block_:_Reason">Reason</code></td>
<td><p>A message that explains the reason for unblocking the Worker. The
Worker does not see this message.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_worker_block(
      WorkerId = "string",
      Reason = "string"
    )
