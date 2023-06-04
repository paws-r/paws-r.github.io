<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_list_assignments_for_hit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListAssignmentsForHIT operation retrieves completed assignments for a HIT

### Description

The `list_assignments_for_hit` operation retrieves completed assignments
for a HIT. You can use this operation to retrieve the results for a HIT.

You can get assignments for a HIT at any time, even if the HIT is not
yet Reviewable. If a HIT requested multiple assignments, and has
received some results but has not yet become Reviewable, you can still
retrieve the partial results with this operation.

Use the AssignmentStatus parameter to control which set of assignments
for a HIT are returned. The ListAssignmentsForHIT operation can return
submitted assignments awaiting approval, or it can return assignments
that have already been approved or rejected. You can set
AssignmentStatus=Approved,Rejected to get assignments that have already
been approved and rejected together in one result set.

Only the Requester who created the HIT can retrieve the assignments for
that HIT.

Results are sorted and divided into numbered pages and the operation
returns a single page of results. You can use the parameters of the
operation to control sorting and pagination.

### Usage

    mturk_list_assignments_for_hit(HITId, NextToken, MaxResults,
      AssignmentStatuses)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_list_assignments_for_hit_:_HITId">HITId</code></td>
<td><p>[required] The ID of the HIT.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_assignments_for_hit_:_NextToken">NextToken</code></td>
<td><p>Pagination token</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_list_assignments_for_hit_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_assignments_for_hit_:_AssignmentStatuses">AssignmentStatuses</code></td>
<td><p>The status of the assignments to return: Submitted | Approved |
Rejected</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      NumResults = 123,
      Assignments = list(
        list(
          AssignmentId = "string",
          WorkerId = "string",
          HITId = "string",
          AssignmentStatus = "Submitted"|"Approved"|"Rejected",
          AutoApprovalTime = as.POSIXct(
            "2015-01-01"
          ),
          AcceptTime = as.POSIXct(
            "2015-01-01"
          ),
          SubmitTime = as.POSIXct(
            "2015-01-01"
          ),
          ApprovalTime = as.POSIXct(
            "2015-01-01"
          ),
          RejectionTime = as.POSIXct(
            "2015-01-01"
          ),
          Deadline = as.POSIXct(
            "2015-01-01"
          ),
          Answer = "string",
          RequesterFeedback = "string"
        )
      )
    )

### Request syntax

    svc$list_assignments_for_hit(
      HITId = "string",
      NextToken = "string",
      MaxResults = 123,
      AssignmentStatuses = list(
        "Submitted"|"Approved"|"Rejected"
      )
    )
