<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_integration_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Web Services resource association with an Amazon Connect instance

### Description

Creates an Amazon Web Services resource association with an Amazon
Connect instance.

### Usage

    connect_create_integration_association(InstanceId, IntegrationType,
      IntegrationArn, SourceApplicationUrl, SourceApplicationName, SourceType,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_integration_association_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_integration_association_:_IntegrationType">IntegrationType</code></td>
<td><p>[required] The type of information to be ingested.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_integration_association_:_IntegrationArn">IntegrationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the integration.</p>
<p>When integrating with Amazon Pinpoint, the Amazon Connect and Amazon
Pinpoint instances must be in the same account.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_integration_association_:_SourceApplicationUrl">SourceApplicationUrl</code></td>
<td><p>The URL for the external application. This field is only required
for the EVENT integration type.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_integration_association_:_SourceApplicationName">SourceApplicationName</code></td>
<td><p>The name of the external application. This field is only required
for the EVENT integration type.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_integration_association_:_SourceType">SourceType</code></td>
<td><p>The type of the data source. This field is only required for the
EVENT integration type.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_integration_association_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IntegrationAssociationId = "string",
      IntegrationAssociationArn = "string"
    )

### Request syntax

    svc$create_integration_association(
      InstanceId = "string",
      IntegrationType = "EVENT"|"VOICE_ID"|"PINPOINT_APP"|"WISDOM_ASSISTANT"|"WISDOM_KNOWLEDGE_BASE"|"CASES_DOMAIN",
      IntegrationArn = "string",
      SourceApplicationUrl = "string",
      SourceApplicationName = "string",
      SourceType = "SALESFORCE"|"ZENDESK",
      Tags = list(
        "string"
      )
    )
