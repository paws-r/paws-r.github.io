<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_pull_request_override_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about whether approval rules have been set aside (overridden) for a pull request, and if so, the Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request

### Description

Returns information about whether approval rules have been set aside
(overridden) for a pull request, and if so, the Amazon Resource Name
(ARN) of the user or identity that overrode the rules and their
requirements for the pull request.

### Usage

    codecommit_get_pull_request_override_state(pullRequestId, revisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_pull_request_override_state_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The ID of the pull request for which you want to get
information about whether approval rules have been set aside
(overridden).</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_pull_request_override_state_:_revisionId">revisionId</code></td>
<td><p>[required] The system-generated ID of the revision for the pull
request. To retrieve the most recent revision ID, use
<code>get_pull_request</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      overridden = TRUE|FALSE,
      overrider = "string"
    )

### Request syntax

    svc$get_pull_request_override_state(
      pullRequestId = "string",
      revisionId = "string"
    )
