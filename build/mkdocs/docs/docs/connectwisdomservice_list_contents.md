<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_list_contents</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the content

### Description

Lists the content.

### Usage

    connectwisdomservice_list_contents(knowledgeBaseId, maxResults,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_list_contents_:_knowledgeBaseId">knowledgeBaseId</code></td>
<td><p>[required] The identifier of the knowledge base. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_list_contents_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_list_contents_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
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

    svc$list_contents(
      knowledgeBaseId = "string",
      maxResults = 123,
      nextToken = "string"
    )
