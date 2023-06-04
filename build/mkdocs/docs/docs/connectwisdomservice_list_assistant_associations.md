<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_list_assistant_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about assistant associations

### Description

Lists information about assistant associations.

### Usage

    connectwisdomservice_list_assistant_associations(assistantId,
      maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_list_assistant_associations_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_list_assistant_associations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_list_assistant_associations_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assistantAssociationSummaries = list(
        list(
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
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_assistant_associations(
      assistantId = "string",
      maxResults = 123,
      nextToken = "string"
    )
