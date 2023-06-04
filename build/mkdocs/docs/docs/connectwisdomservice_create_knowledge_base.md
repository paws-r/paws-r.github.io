<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_create_knowledge_base</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a knowledge base

### Description

Creates a knowledge base.

When using this API, you cannot reuse [Amazon
AppIntegrations](https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html)
DataIntegrations with external knowledge bases such as Salesforce and
ServiceNow. If you do, you'll get an `InvalidRequestException` error.

For example, you're programmatically managing your external knowledge
base, and you want to add or remove one of the fields that is being
ingested from Salesforce. Do the following:

1.  Call `delete_knowledge_base`.

2.  Call
    [DeleteDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html).

3.  Call
    [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html)
    to recreate the DataIntegration or a create different one.

4.  Call CreateKnowledgeBase.

### Usage

    connectwisdomservice_create_knowledge_base(clientToken, description,
      knowledgeBaseType, name, renderingConfiguration,
      serverSideEncryptionConfiguration, sourceConfiguration, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_create_knowledge_base_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_knowledge_base_:_description">description</code></td>
<td><p>The description.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_knowledge_base_:_knowledgeBaseType">knowledgeBaseType</code></td>
<td><p>[required] The type of knowledge base. Only CUSTOM knowledge
bases allow you to upload your own content. EXTERNAL knowledge bases
support integrations with third-party systems whose content is
synchronized automatically.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_knowledge_base_:_name">name</code></td>
<td><p>[required] The name of the knowledge base.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_knowledge_base_:_renderingConfiguration">renderingConfiguration</code></td>
<td><p>Information about how to render the content.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_knowledge_base_:_serverSideEncryptionConfiguration">serverSideEncryptionConfiguration</code></td>
<td><p>The KMS key used for encryption.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_knowledge_base_:_sourceConfiguration">sourceConfiguration</code></td>
<td><p>The source of the knowledge base content. Only set this argument
for EXTERNAL knowledge bases.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_knowledge_base_:_tags">tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource.</p></td>
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

    svc$create_knowledge_base(
      clientToken = "string",
      description = "string",
      knowledgeBaseType = "EXTERNAL"|"CUSTOM",
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
      tags = list(
        "string"
      )
    )
