<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_delete_pull_request_approval_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an approval rule from a specified pull request

### Description

Deletes an approval rule from a specified pull request. Approval rules
can be deleted from a pull request only if the pull request is open, and
if the approval rule was created specifically for a pull request and not
generated from an approval rule template associated with the repository
where the pull request was created. You cannot delete an approval rule
from a merged or closed pull request.

### Usage

    codecommit_delete_pull_request_approval_rule(pullRequestId,
      approvalRuleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_delete_pull_request_approval_rule_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request that
contains the approval rule you want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_delete_pull_request_approval_rule_:_approvalRuleName">approvalRuleName</code></td>
<td><p>[required] The name of the approval rule you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      approvalRuleId = "string"
    )

### Request syntax

    svc$delete_pull_request_approval_rule(
      pullRequestId = "string",
      approvalRuleName = "string"
    )
