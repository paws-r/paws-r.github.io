<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_query_assistant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Performs a manual search against the specified assistant

### Description

Performs a manual search against the specified assistant. To retrieve
recommendations for an assistant, use `get_recommendations`.

### Usage

    connectwisdomservice_query_assistant(assistantId, maxResults, nextToken,
      queryText)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_query_assistant_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_query_assistant_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_query_assistant_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_query_assistant_:_queryText">queryText</code></td>
<td><p>[required] The text to search for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      results = list(
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
          relevanceScore = 123.0,
          resultId = "string"
        )
      )
    )

### Request syntax

    svc$query_assistant(
      assistantId = "string",
      maxResults = 123,
      nextToken = "string",
      queryText = "string"
    )
