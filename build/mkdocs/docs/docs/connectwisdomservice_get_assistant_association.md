<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_get_assistant_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about an assistant association

### Description

Retrieves information about an assistant association.

### Usage

    connectwisdomservice_get_assistant_association(assistantAssociationId,
      assistantId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_get_assistant_association_:_assistantAssociationId">assistantAssociationId</code></td>
<td><p>[required] The identifier of the assistant association. Can be
either the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_get_assistant_association_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assistantAssociation = list(
        assistantArn = "string",
        assistantAssociationArn = "string",
        assistantAssociationId = "string",
        assistantId = "string",
        associationData = list(
          knowledgeBaseAssociation = list(
            knowledgeBaseArn = "string",
            knowledgeBaseId = "string"
          )
        ),
        associationType = "KNOWLEDGE_BASE",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_assistant_association(
      assistantAssociationId = "string",
      assistantId = "string"
    )
