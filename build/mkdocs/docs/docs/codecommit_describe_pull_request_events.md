<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_describe_pull_request_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about one or more pull request events

### Description

Returns information about one or more pull request events.

### Usage

    codecommit_describe_pull_request_events(pullRequestId,
      pullRequestEventType, actorArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_describe_pull_request_events_:_pullRequestId">pullRequestId</code></td>
<td><p>[required] The system-generated ID of the pull request. To get
this ID, use <code>list_pull_requests</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_describe_pull_request_events_:_pullRequestEventType">pullRequestEventType</code></td>
<td><p>Optional. The pull request event type about which you want to
return information.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_describe_pull_request_events_:_actorArn">actorArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the user whose actions resulted
in the event. Examples include updating the pull request with more
commits or changing the status of a pull request.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_describe_pull_request_events_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_describe_pull_request_events_:_maxResults">maxResults</code></td>
<td><p>A non-zero, non-negative integer used to limit the number of
returned results. The default is 100 events, which is also the maximum
number of events that can be returned in a result.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      pullRequestEvents = list(
        list(
          pullRequestId = "string",
          eventDate = as.POSIXct(
            "2015-01-01"
          ),
          pullRequestEventType = "PULL_REQUEST_CREATED"|"PULL_REQUEST_STATUS_CHANGED"|"PULL_REQUEST_SOURCE_REFERENCE_UPDATED"|"PULL_REQUEST_MERGE_STATE_CHANGED"|"PULL_REQUEST_APPROVAL_RULE_CREATED"|"PULL_REQUEST_APPROVAL_RULE_UPDATED"|"PULL_REQUEST_APPROVAL_RULE_DELETED"|"PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN"|"PULL_REQUEST_APPROVAL_STATE_CHANGED",
          actorArn = "string",
          pullRequestCreatedEventMetadata = list(
            repositoryName = "string",
            sourceCommitId = "string",
            destinationCommitId = "string",
            mergeBase = "string"
          ),
          pullRequestStatusChangedEventMetadata = list(
            pullRequestStatus = "OPEN"|"CLOSED"
          ),
          pullRequestSourceReferenceUpdatedEventMetadata = list(
            repositoryName = "string",
            beforeCommitId = "string",
            afterCommitId = "string",
            mergeBase = "string"
          ),
          pullRequestMergedStateChangedEventMetadata = list(
            repositoryName = "string",
            destinationReference = "string",
            mergeMetadata = list(
              isMerged = TRUE|FALSE,
              mergedBy = "string",
              mergeCommitId = "string",
              mergeOption = "FAST_FORWARD_MERGE"|"SQUASH_MERGE"|"THREE_WAY_MERGE"
            )
          ),
          approvalRuleEventMetadata = list(
            approvalRuleName = "string",
            approvalRuleId = "string",
            approvalRuleContent = "string"
          ),
          approvalStateChangedEventMetadata = list(
            revisionId = "string",
            approvalStatus = "APPROVE"|"REVOKE"
          ),
          approvalRuleOverriddenEventMetadata = list(
            revisionId = "string",
            overrideStatus = "OVERRIDE"|"REVOKE"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$describe_pull_request_events(
      pullRequestId = "string",
      pullRequestEventType = "PULL_REQUEST_CREATED"|"PULL_REQUEST_STATUS_CHANGED"|"PULL_REQUEST_SOURCE_REFERENCE_UPDATED"|"PULL_REQUEST_MERGE_STATE_CHANGED"|"PULL_REQUEST_APPROVAL_RULE_CREATED"|"PULL_REQUEST_APPROVAL_RULE_UPDATED"|"PULL_REQUEST_APPROVAL_RULE_DELETED"|"PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN"|"PULL_REQUEST_APPROVAL_STATE_CHANGED",
      actorArn = "string",
      nextToken = "string",
      maxResults = 123
    )
