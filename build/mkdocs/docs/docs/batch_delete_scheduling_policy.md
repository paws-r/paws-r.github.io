<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_delete_scheduling_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified scheduling policy

### Description

Deletes the specified scheduling policy.

You can't delete a scheduling policy that's used in any job queues.

### Usage

    batch_delete_scheduling_policy(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_delete_scheduling_policy_:_arn">arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the scheduling
policy to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_scheduling_policy(
      arn = "string"
    )
