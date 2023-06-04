<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_associate_service_action_with_provisioning_artifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a self-service action with a provisioning artifact

### Description

Associates a self-service action with a provisioning artifact.

### Usage

    servicecatalog_associate_service_action_with_provisioning_artifact(
      ProductId, ProvisioningArtifactId, ServiceActionId, AcceptLanguage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_associate_service_action_with_provisioning_artifact_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier. For example,
<code>prod-abcdzk7xy33qa</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_associate_service_action_with_provisioning_artifact_:_ProvisioningArtifactId">ProvisioningArtifactId</code></td>
<td><p>[required] The identifier of the provisioning artifact. For
example, <code
style="white-space: pre;">⁠pa-4abcdjnxjj6ne⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_associate_service_action_with_provisioning_artifact_:_ServiceActionId">ServiceActionId</code></td>
<td><p>[required] The self-service action identifier. For example,
<code>act-fs7abcd89wxyz</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_associate_service_action_with_provisioning_artifact_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_service_action_with_provisioning_artifact(
      ProductId = "string",
      ProvisioningArtifactId = "string",
      ServiceActionId = "string",
      AcceptLanguage = "string"
    )
