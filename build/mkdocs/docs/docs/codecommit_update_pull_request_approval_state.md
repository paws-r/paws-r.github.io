<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_update_pull_request_approval_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the state of a user's approval on a pull request

### Description

Updates the state of a user's approval on a pull request. The user is
derived from the signed-in account when the request is made.

### Usage

    codecommit_update_pull_request_approval_state(pullRequestId, revisionId,
      approvalState)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_update_pull_request_approval_state_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_update_pull_request_approval_state_:_revisionId">revisionId</code></td>
<td><p>[required] The system-generated ID of the revision.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_update_pull_request_approval_state_:_approvalState">approvalState</code></td>
<td><p>[required] The approval state to associate with the user on the
pull request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_pull_request_approval_state(
      pullRequestId = "string",
      revisionId = "string",
      approvalState = "APPROVE"|"REVOKE"
    )
