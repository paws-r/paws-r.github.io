<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_pull_request_approval_states</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the approval states for a specified pull request

### Description

Gets information about the approval states for a specified pull request.
Approval states only apply to pull requests that have one or more
approval rules applied to them.

### Usage

    codecommit_get_pull_request_approval_states(pullRequestId, revisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_pull_request_approval_states_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID for the pull request.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_pull_request_approval_states_:_revisionId">revisionId</code></td>
<td><p>[required] The system-generated ID for the pull request
revision.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      approvals = list(
        list(
          userArn = "string",
          approvalState = "APPROVE"|"REVOKE"
        )
      )
    )

### Request syntax

    svc$get_pull_request_approval_states(
      pullRequestId = "string",
      revisionId = "string"
    )
