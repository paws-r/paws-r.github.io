<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_override_pull_request_approval_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets aside (overrides) all approval rule requirements for a specified pull request

### Description

Sets aside (overrides) all approval rule requirements for a specified
pull request.

### Usage

    codecommit_override_pull_request_approval_rules(pullRequestId,
      revisionId, overrideStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_override_pull_request_approval_rules_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request for which
you want to override all approval rule requirements. To get this
information, use <code>get_pull_request</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_override_pull_request_approval_rules_:_revisionId">revisionId</code></td>
<td><p>[required] The system-generated ID of the most recent revision of
the pull request. You cannot override approval rules for anything but
the most recent revision of a pull request. To get the revision ID, use
GetPullRequest.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_override_pull_request_approval_rules_:_overrideStatus">overrideStatus</code></td>
<td><p>[required] Whether you want to set aside approval rule
requirements for the pull request (OVERRIDE) or revoke a previous
override and apply approval rule requirements (REVOKE). REVOKE status is
not stored.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$override_pull_request_approval_rules(
      pullRequestId = "string",
      revisionId = "string",
      overrideStatus = "OVERRIDE"|"REVOKE"
    )
