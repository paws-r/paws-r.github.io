<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_approve_assignment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ApproveAssignment operation approves the results of a completed assignment

### Description

The `approve_assignment` operation approves the results of a completed
assignment.

Approving an assignment initiates two payments from the Requester's
Amazon.com account

-   The Worker who submitted the results is paid the reward specified in
    the HIT.

-   Amazon Mechanical Turk fees are debited.

If the Requester's account does not have adequate funds for these
payments, the call to ApproveAssignment returns an exception, and the
approval is not processed. You can include an optional feedback message
with the approval, which the Worker can see in the Status section of the
web site.

You can also call this operation for assignments that were previous
rejected and approve them by explicitly overriding the previous
rejection. This only works on rejected assignments that were submitted
within the previous 30 days and only if the assignment's related HIT has
not been deleted.

### Usage

    mturk_approve_assignment(AssignmentId, RequesterFeedback,
      OverrideRejection)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_approve_assignment_:_AssignmentId">AssignmentId</code></td>
<td><p>[required] The ID of the assignment. The assignment must
correspond to a HIT created by the Requester.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_approve_assignment_:_RequesterFeedback">RequesterFeedback</code></td>
<td><p>A message for the Worker, which the Worker can see in the Status
section of the web site.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_approve_assignment_:_OverrideRejection">OverrideRejection</code></td>
<td><p>A flag indicating that an assignment should be approved even if
it was previously rejected. Defaults to <code>False</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$approve_assignment(
      AssignmentId = "string",
      RequesterFeedback = "string",
      OverrideRejection = TRUE|FALSE
    )
