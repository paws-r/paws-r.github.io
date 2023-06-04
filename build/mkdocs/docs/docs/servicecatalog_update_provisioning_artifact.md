<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_update_provisioning_artifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified provisioning artifact (also known as a version) for the specified product

### Description

Updates the specified provisioning artifact (also known as a version)
for the specified product.

You cannot update a provisioning artifact for a product that was shared
with you.

### Usage

    servicecatalog_update_provisioning_artifact(AcceptLanguage, ProductId,
      ProvisioningArtifactId, Name, Description, Active, Guidance)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioning_artifact_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_provisioning_artifact_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioning_artifact_:_ProvisioningArtifactId">ProvisioningArtifactId</code></td>
<td><p>[required] The identifier of the provisioning artifact.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_provisioning_artifact_:_Name">Name</code></td>
<td><p>The updated name of the provisioning artifact.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioning_artifact_:_Description">Description</code></td>
<td><p>The updated description of the provisioning artifact.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_provisioning_artifact_:_Active">Active</code></td>
<td><p>Indicates whether the product version is active.</p>
<p>Inactive provisioning artifacts are invisible to end users. End users
cannot launch or update a provisioned product from an inactive
provisioning artifact.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioning_artifact_:_Guidance">Guidance</code></td>
<td><p>Information set by the administrator to provide guidance to end
users about which provisioning artifacts to use.</p>
<p>The <code>DEFAULT</code> value indicates that the product version is
active.</p>
<p>The administrator can set the guidance to <code>DEPRECATED</code> to
inform users that the product version is deprecated. Users are able to
make updates to a provisioned product of a deprecated version but cannot
launch new provisioned products using a deprecated version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProvisioningArtifactDetail = list(
        Id = "string",
        Name = "string",
        Description = "string",
        Type = "CLOUD_FORMATION_TEMPLATE"|"MARKETPLACE_AMI"|"MARKETPLACE_CAR"|"TERRAFORM_OPEN_SOURCE",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        Active = TRUE|FALSE,
        Guidance = "DEFAULT"|"DEPRECATED",
        SourceRevision = "string"
      ),
      Info = list(
        "string"
      ),
      Status = "AVAILABLE"|"CREATING"|"FAILED"
    )

### Request syntax

    svc$update_provisioning_artifact(
      AcceptLanguage = "string",
      ProductId = "string",
      ProvisioningArtifactId = "string",
      Name = "string",
      Description = "string",
      Active = TRUE|FALSE,
      Guidance = "DEFAULT"|"DEPRECATED"
    )
