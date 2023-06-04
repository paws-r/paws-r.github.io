<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_delete_provisioning_artifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified provisioning artifact (also known as a version) for the specified product

### Description

Deletes the specified provisioning artifact (also known as a version)
for the specified product.

You cannot delete a provisioning artifact associated with a product that
was shared with you. You cannot delete the last provisioning artifact
for a product, because a product must have at least one provisioning
artifact.

### Usage

    servicecatalog_delete_provisioning_artifact(AcceptLanguage, ProductId,
      ProvisioningArtifactId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_delete_provisioning_artifact_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_delete_provisioning_artifact_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_delete_provisioning_artifact_:_ProvisioningArtifactId">ProvisioningArtifactId</code></td>
<td><p>[required] The identifier of the provisioning artifact.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_provisioning_artifact(
      AcceptLanguage = "string",
      ProductId = "string",
      ProvisioningArtifactId = "string"
    )
