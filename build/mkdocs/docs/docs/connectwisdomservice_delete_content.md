<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_delete_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the content

### Description

Deletes the content.

### Usage

    connectwisdomservice_delete_content(contentId, knowledgeBaseId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_delete_content_:_contentId">contentId</code></td>
<td><p>[required] The identifier of the content. Can be either the ID or
the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_delete_content_:_knowledgeBaseId">knowledgeBaseId</code></td>
<td><p>[required] The identifier of the knowledge base. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_content(
      contentId = "string",
      knowledgeBaseId = "string"
    )
