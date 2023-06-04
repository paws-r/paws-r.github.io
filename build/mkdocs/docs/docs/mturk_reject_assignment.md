<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_reject_assignment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The RejectAssignment operation rejects the results of a completed assignment

### Description

The `reject_assignment` operation rejects the results of a completed
assignment.

You can include an optional feedback message with the rejection, which
the Worker can see in the Status section of the web site. When you
include a feedback message with the rejection, it helps the Worker
understand why the assignment was rejected, and can improve the quality
of the results the Worker submits in the future.

Only the Requester who created the HIT can reject an assignment for the
HIT.

### Usage

    mturk_reject_assignment(AssignmentId, RequesterFeedback)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_reject_assignment_:_AssignmentId">AssignmentId</code></td>
<td><p>[required] The ID of the assignment. The assignment must
correspond to a HIT created by the Requester.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_reject_assignment_:_RequesterFeedback">RequesterFeedback</code></td>
<td><p>[required] A message for the Worker, which the Worker can see in
the Status section of the web site.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reject_assignment(
      AssignmentId = "string",
      RequesterFeedback = "string"
    )
