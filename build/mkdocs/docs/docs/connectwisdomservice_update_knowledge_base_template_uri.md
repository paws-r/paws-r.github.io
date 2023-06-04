<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_update_knowledge_base_template_uri</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the template URI of a knowledge base

### Description

Updates the template URI of a knowledge base. This is only supported for
knowledge bases of type EXTERNAL. Include a single variable in
`⁠${variable}⁠` format; this interpolated by Wisdom using ingested
content. For example, if you ingest a Salesforce article, it has an `Id`
value, and you can set the template URI to
`⁠https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view⁠`.

### Usage

    connectwisdomservice_update_knowledge_base_template_uri(knowledgeBaseId,
      templateUri)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_update_knowledge_base_template_uri_:_knowledgeBaseId">knowledgeBaseId</code></td>
<td><p>[required] The identifier of the knowledge base. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_update_knowledge_base_template_uri_:_templateUri">templateUri</code></td>
<td><p>[required] The template URI to update.</p></td>
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

    svc$update_knowledge_base_template_uri(
      knowledgeBaseId = "string",
      templateUri = "string"
    )
