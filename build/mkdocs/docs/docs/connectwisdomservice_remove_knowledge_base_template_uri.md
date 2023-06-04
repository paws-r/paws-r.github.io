<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_remove_knowledge_base_template_uri</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a URI template from a knowledge base

### Description

Removes a URI template from a knowledge base.

### Usage

    connectwisdomservice_remove_knowledge_base_template_uri(knowledgeBaseId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_remove_knowledge_base_template_uri_:_knowledgeBaseId">knowledgeBaseId</code></td>
<td><p>[required] The identifier of the knowledge base. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_knowledge_base_template_uri(
      knowledgeBaseId = "string"
    )
