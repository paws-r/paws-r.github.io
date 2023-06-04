<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_get_knowledge_base</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the knowledge base

### Description

Retrieves information about the knowledge base.

### Usage

    connectwisdomservice_get_knowledge_base(knowledgeBaseId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_get_knowledge_base_:_knowledgeBaseId">knowledgeBaseId</code></td>
<td><p>[required] The identifier of the knowledge base. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      knowledgeBase = list(
        description = "string",
        knowledgeBaseArn = "string",
        knowledgeBaseId = "string",
        knowledgeBaseType = "EXTERNAL"|"CUSTOM",
        lastContentModificationTime = as.POSIXct(
          "2015-01-01"
        ),
        name = "string",
        renderingConfiguration = list(
          templateUri = "string"
        ),
        serverSideEncryptionConfiguration = list(
          kmsKeyId = "string"
        ),
        sourceConfiguration = list(
          appIntegrations = list(
            appIntegrationArn = "string",
            objectFields = list(
              "string"
            )
          )
        ),
        status = "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"ACTIVE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETED",
        tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_knowledge_base(
      knowledgeBaseId = "string"
    )
