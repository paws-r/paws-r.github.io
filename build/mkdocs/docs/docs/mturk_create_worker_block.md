<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_create_worker_block</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The CreateWorkerBlock operation allows you to prevent a Worker from working on your HITs

### Description

The `create_worker_block` operation allows you to prevent a Worker from
working on your HITs. For example, you can block a Worker who is
producing poor quality work. You can block up to 100,000 Workers.

### Usage

    mturk_create_worker_block(WorkerId, Reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_create_worker_block_:_WorkerId">WorkerId</code></td>
<td><p>[required] The ID of the Worker to block.</p></td>
</tr>
<tr class="even">
<td><code id="mturk_create_worker_block_:_Reason">Reason</code></td>
<td><p>[required] A message explaining the reason for blocking the
Worker. This parameter enables you to keep track of your Workers. The
Worker does not see this message.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_worker_block(
      WorkerId = "string",
      Reason = "string"
    )
