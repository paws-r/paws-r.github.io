<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_provisioning_artifact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified provisioning artifact (also known as a version) for the specified product

### Description

Gets information about the specified provisioning artifact (also known
as a version) for the specified product.

### Usage

    servicecatalog_describe_provisioning_artifact(AcceptLanguage,
      ProvisioningArtifactId, ProductId, ProvisioningArtifactName,
      ProductName, Verbose)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_provisioning_artifact_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_provisioning_artifact_:_ProvisioningArtifactId">ProvisioningArtifactId</code></td>
<td><p>The identifier of the provisioning artifact.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_describe_provisioning_artifact_:_ProductId">ProductId</code></td>
<td><p>The product identifier.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_provisioning_artifact_:_ProvisioningArtifactName">ProvisioningArtifactName</code></td>
<td><p>The provisioning artifact name.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_describe_provisioning_artifact_:_ProductName">ProductName</code></td>
<td><p>The product name.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_provisioning_artifact_:_Verbose">Verbose</code></td>
<td><p>Indicates whether a verbose level of detail is enabled.</p></td>
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

    svc$describe_provisioning_artifact(
      AcceptLanguage = "string",
      ProvisioningArtifactId = "string",
      ProductId = "string",
      ProvisioningArtifactName = "string",
      ProductName = "string",
      Verbose = TRUE|FALSE
    )
