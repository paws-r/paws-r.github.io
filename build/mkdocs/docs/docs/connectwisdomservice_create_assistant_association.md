<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_create_assistant_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an association between an Amazon Connect Wisdom assistant and another resource

### Description

Creates an association between an Amazon Connect Wisdom assistant and
another resource. Currently, the only supported association is with a
knowledge base. An assistant can have only a single association.

### Usage

    connectwisdomservice_create_assistant_association(assistantId,
      association, associationType, clientToken, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_create_assistant_association_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_assistant_association_:_association">association</code></td>
<td><p>[required] The identifier of the associated resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_assistant_association_:_associationType">associationType</code></td>
<td><p>[required] The type of association.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_assistant_association_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_assistant_association_:_tags">tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource.</p></td>
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

    svc$create_assistant_association(
      assistantId = "string",
      association = list(
        knowledgeBaseId = "string"
      ),
      associationType = "KNOWLEDGE_BASE",
      clientToken = "string",
      tags = list(
        "string"
      )
    )
