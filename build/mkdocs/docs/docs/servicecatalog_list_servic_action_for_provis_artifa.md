<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_service_actions_for_provisioning_artifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID

### Description

Returns a paginated list of self-service actions associated with the
specified Product ID and Provisioning Artifact ID.

### Usage

    servicecatalog_list_service_actions_for_provisioning_artifact(ProductId,
      ProvisioningArtifactId, PageSize, PageToken, AcceptLanguage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_service_actions_for_provisioning_artifact_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier. For example,
<code>prod-abcdzk7xy33qa</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_service_actions_for_provisioning_artifact_:_ProvisioningArtifactId">ProvisioningArtifactId</code></td>
<td><p>[required] The identifier of the provisioning artifact. For
example, <code
style="white-space: pre;">⁠pa-4abcdjnxjj6ne⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_service_actions_for_provisioning_artifact_:_PageSize">PageSize</code></td>
<td><p>The maximum number of items to return with this call.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_service_actions_for_provisioning_artifact_:_PageToken">PageToken</code></td>
<td><p>The page token for the next set of results. To retrieve the first
set of results, use null.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_list_service_actions_for_provisioning_artifact_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ServiceActionSummaries = list(
        list(
          Id = "string",
          Name = "string",
          Description = "string",
          DefinitionType = "SSM_AUTOMATION"
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_service_actions_for_provisioning_artifact(
      ProductId = "string",
      ProvisioningArtifactId = "string",
      PageSize = 123,
      PageToken = "string",
      AcceptLanguage = "string"
    )
