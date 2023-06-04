<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_integration_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides summary information about the Amazon Web Services resource associations for the specified Amazon Connect instance

### Description

Provides summary information about the Amazon Web Services resource
associations for the specified Amazon Connect instance.

### Usage

    connect_list_integration_associations(InstanceId, IntegrationType,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_integration_associations_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_integration_associations_:_IntegrationType">IntegrationType</code></td>
<td><p>The integration type.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_integration_associations_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_integration_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IntegrationAssociationSummaryList = list(
        list(
          IntegrationAssociationId = "string",
          IntegrationAssociationArn = "string",
          InstanceId = "string",
          IntegrationType = "EVENT"|"VOICE_ID"|"PINPOINT_APP"|"WISDOM_ASSISTANT"|"WISDOM_KNOWLEDGE_BASE"|"CASES_DOMAIN",
          IntegrationArn = "string",
          SourceApplicationUrl = "string",
          SourceApplicationName = "string",
          SourceType = "SALESFORCE"|"ZENDESK"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_integration_associations(
      InstanceId = "string",
      IntegrationType = "EVENT"|"VOICE_ID"|"PINPOINT_APP"|"WISDOM_ASSISTANT"|"WISDOM_KNOWLEDGE_BASE"|"CASES_DOMAIN",
      NextToken = "string",
      MaxResults = 123
    )
