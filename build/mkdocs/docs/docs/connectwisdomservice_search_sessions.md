<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_search_sessions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for sessions

### Description

Searches for sessions.

### Usage

    connectwisdomservice_search_sessions(assistantId, maxResults, nextToken,
      searchExpression)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_search_sessions_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_search_sessions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_search_sessions_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_search_sessions_:_searchExpression">searchExpression</code></td>
<td><p>[required] The search expression to filter results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      sessionSummaries = list(
        list(
          assistantArn = "string",
          assistantId = "string",
          sessionArn = "string",
          sessionId = "string"
        )
      )
    )

### Request syntax

    svc$search_sessions(
      assistantId = "string",
      maxResults = 123,
      nextToken = "string",
      searchExpression = list(
        filters = list(
          list(
            field = "NAME",
            operator = "EQUALS",
            value = "string"
          )
        )
      )
    )
