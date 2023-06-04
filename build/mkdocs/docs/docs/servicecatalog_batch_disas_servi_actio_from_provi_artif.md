<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_batch_disassociate_service_action_from_provisioning_artifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a batch of self-service actions from the specified provisioning artifact

### Description

Disassociates a batch of self-service actions from the specified
provisioning artifact.

### Usage

    servicecatalog_batch_disassociate_service_action_from_provisioning_artifact(
      ServiceActionAssociations, AcceptLanguage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_batch_disassociate_service_action_from_provisioning_artifact_:_ServiceActionAssociations">ServiceActionAssociations</code></td>
<td><p>[required] One or more associations, each consisting of the
Action ID, the Product ID, and the Provisioning Artifact ID.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_batch_disassociate_service_action_from_provisioning_artifact_:_AcceptLanguage">AcceptLanguage</code></td>
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
      FailedServiceActionAssociations = list(
        list(
          ServiceActionId = "string",
          ProductId = "string",
          ProvisioningArtifactId = "string",
          ErrorCode = "DUPLICATE_RESOURCE"|"INTERNAL_FAILURE"|"LIMIT_EXCEEDED"|"RESOURCE_NOT_FOUND"|"THROTTLING"|"INVALID_PARAMETER",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_disassociate_service_action_from_provisioning_artifact(
      ServiceActionAssociations = list(
        list(
          ServiceActionId = "string",
          ProductId = "string",
          ProvisioningArtifactId = "string"
        )
      ),
      AcceptLanguage = "string"
    )
