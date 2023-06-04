<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_get_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves recommendations for the specified session

### Description

Retrieves recommendations for the specified session. To avoid retrieving
the same recommendations in subsequent calls, use
`notify_recommendations_received`. This API supports long-polling
behavior with the `waitTimeSeconds` parameter. Short poll is the default
behavior and only returns recommendations already available. To perform
a manual query against an assistant, use `query_assistant`.

### Usage

    connectwisdomservice_get_recommendations(assistantId, maxResults,
      sessionId, waitTimeSeconds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_get_recommendations_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_get_recommendations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_get_recommendations_:_sessionId">sessionId</code></td>
<td><p>[required] The identifier of the session. Can be either the ID or
the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_get_recommendations_:_waitTimeSeconds">waitTimeSeconds</code></td>
<td><p>The duration (in seconds) for which the call waits for a
recommendation to be made available before returning. If a
recommendation is available, the call returns sooner than
<code>WaitTimeSeconds</code>. If no messages are available and the wait
time expires, the call returns successfully with an empty list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      recommendations = list(
        list(
          document = list(
            contentReference = list(
              contentArn = "string",
              contentId = "string",
              knowledgeBaseArn = "string",
              knowledgeBaseId = "string"
            ),
            excerpt = list(
              highlights = list(
                list(
                  beginOffsetInclusive = 123,
                  endOffsetExclusive = 123
                )
              ),
              text = "string"
            ),
            title = list(
              highlights = list(
                list(
                  beginOffsetInclusive = 123,
                  endOffsetExclusive = 123
                )
              ),
              text = "string"
            )
          ),
          recommendationId = "string",
          relevanceLevel = "HIGH"|"MEDIUM"|"LOW",
          relevanceScore = 123.0,
          type = "KNOWLEDGE_CONTENT"
        )
      ),
      triggers = list(
        list(
          data = list(
            query = list(
              text = "string"
            )
          ),
          id = "string",
          recommendationIds = list(
            "string"
          ),
          source = "ISSUE_DETECTION"|"RULE_EVALUATION"|"OTHER",
          type = "QUERY"
        )
      )
    )

### Request syntax

    svc$get_recommendations(
      assistantId = "string",
      maxResults = 123,
      sessionId = "string",
      waitTimeSeconds = 123
    )
