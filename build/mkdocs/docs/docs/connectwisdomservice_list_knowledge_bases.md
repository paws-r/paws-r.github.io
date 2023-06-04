<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_list_knowledge_bases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the knowledge bases

### Description

Lists the knowledge bases.

### Usage

    connectwisdomservice_list_knowledge_bases(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_list_knowledge_bases_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_list_knowledge_bases_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      knowledgeBaseSummaries = list(
        list(
          description = "string",
          knowledgeBaseArn = "string",
          knowledgeBaseId = "string",
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
          status = "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"ACTIVE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETED",
          tags = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_knowledge_bases(
      maxResults = 123,
      nextToken = "string"
    )
