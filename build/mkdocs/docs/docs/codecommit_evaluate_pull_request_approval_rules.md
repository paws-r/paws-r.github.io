<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_evaluate_pull_request_approval_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Evaluates whether a pull request has met all the conditions specified in its associated approval rules

### Description

Evaluates whether a pull request has met all the conditions specified in
its associated approval rules.

### Usage

    codecommit_evaluate_pull_request_approval_rules(pullRequestId,
      revisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_evaluate_pull_request_approval_rules_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request you want
to evaluate.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_evaluate_pull_request_approval_rules_:_revisionId">revisionId</code></td>
<td><p>[required] The system-generated ID for the pull request revision.
To retrieve the most recent revision ID for a pull request, use
<code>get_pull_request</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      evaluation = list(
        approved = TRUE|FALSE,
        overridden = TRUE|FALSE,
        approvalRulesSatisfied = list(
          "string"
        ),
        approvalRulesNotSatisfied = list(
          "string"
        )
      )
    )

### Request syntax

    svc$evaluate_pull_request_approval_rules(
      pullRequestId = "string",
      revisionId = "string"
    )
