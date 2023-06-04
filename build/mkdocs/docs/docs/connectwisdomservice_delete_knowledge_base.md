<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_delete_knowledge_base</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the knowledge base

### Description

Deletes the knowledge base.

When you use this API to delete an external knowledge base such as
Salesforce or ServiceNow, you must also delete the [Amazon
AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
DataIntegration. This is because you can't reuse the DataIntegration
after it's been associated with an external knowledge base. However, you
can delete and recreate it. See
[DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html)
and
[CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
in the *Amazon AppIntegrations API Reference*.

### Usage

    connectwisdomservice_delete_knowledge_base(knowledgeBaseId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_delete_knowledge_base_:_knowledgeBaseId">knowledgeBaseId</code></td>
<td><p>[required] The knowledge base to delete content from. Can be
either the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_knowledge_base(
      knowledgeBaseId = "string"
    )
