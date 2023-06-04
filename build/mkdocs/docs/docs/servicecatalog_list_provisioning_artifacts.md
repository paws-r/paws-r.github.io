<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_list_provisioning_artifacts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all provisioning artifacts (also known as versions) for the specified product

### Description

Lists all provisioning artifacts (also known as versions) for the
specified product.

### Usage

    servicecatalog_list_provisioning_artifacts(AcceptLanguage, ProductId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_list_provisioning_artifacts_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_list_provisioning_artifacts_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProvisioningArtifactDetails = list(
        list(
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
        )
      ),
      NextPageToken = "string"
    )

### Request syntax

    svc$list_provisioning_artifacts(
      AcceptLanguage = "string",
      ProductId = "string"
    )
