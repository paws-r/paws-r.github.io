<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_get_content_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves summary information about the content

### Description

Retrieves summary information about the content.

### Usage

    connectwisdomservice_get_content_summary(contentId, knowledgeBaseId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_get_content_summary_:_contentId">contentId</code></td>
<td><p>[required] The identifier of the content. Can be either the ID or
the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_get_content_summary_:_knowledgeBaseId">knowledgeBaseId</code></td>
<td><p>[required] The identifier of the knowledge base. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      contentSummary = list(
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
    )

### Request syntax

    svc$get_content_summary(
      contentId = "string",
      knowledgeBaseId = "string"
    )
