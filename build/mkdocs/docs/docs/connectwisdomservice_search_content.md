<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_search_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for content in a specified knowledge base

### Description

Searches for content in a specified knowledge base. Can be used to get a
specific content resource by its name.

### Usage

    connectwisdomservice_search_content(knowledgeBaseId, maxResults,
      nextToken, searchExpression)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_search_content_:_knowledgeBaseId">knowledgeBaseId</code></td>
<td><p>[required] The identifier of the knowledge base. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_search_content_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_search_content_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_search_content_:_searchExpression">searchExpression</code></td>
<td><p>[required] The search expression to filter results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      contentSummaries = list(
        list(
          contentArn = "string",
          contentId = "string",
          contentType = "string",
          knowledgeBaseArn = "string",
          knowledgeBaseId = "string",
          metadata = list(
            "string"
          ),
          name = "string",
          revisionId = "string",
          status = "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"ACTIVE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETED"|"UPDATE_FAILED",
          tags = list(
            "string"
          ),
          title = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$search_content(
      knowledgeBaseId = "string",
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
