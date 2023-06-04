<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_update_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified product

### Description

Updates the specified product.

### Usage

    servicecatalog_update_product(AcceptLanguage, Id, Name, Owner,
      Description, Distributor, SupportDescription, SupportEmail, SupportUrl,
      AddTags, RemoveTags, SourceConnection)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_update_product_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="servicecatalog_update_product_:_Id">Id</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code id="servicecatalog_update_product_:_Name">Name</code></td>
<td><p>The updated product name.</p></td>
</tr>
<tr class="even">
<td><code id="servicecatalog_update_product_:_Owner">Owner</code></td>
<td><p>The updated owner of the product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_product_:_Description">Description</code></td>
<td><p>The updated description of the product.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_product_:_Distributor">Distributor</code></td>
<td><p>The updated distributor of the product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_product_:_SupportDescription">SupportDescription</code></td>
<td><p>The updated support description for the product.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_product_:_SupportEmail">SupportEmail</code></td>
<td><p>The updated support email for the product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_product_:_SupportUrl">SupportUrl</code></td>
<td><p>The updated support URL for the product.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_product_:_AddTags">AddTags</code></td>
<td><p>The tags to add to the product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_product_:_RemoveTags">RemoveTags</code></td>
<td><p>The tags to remove from the product.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_product_:_SourceConnection">SourceConnection</code></td>
<td><p>Specifies connection details for the updated product and syncs
the product to the connection source artifact. This automatically
manages the product's artifacts based on changes to the source. The
<code>SourceConnection</code> parameter consists of the following
sub-fields.</p>
<ul>
<li><p><code>Type</code></p></li>
<li><p><code>ConnectionParamters</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProductViewDetail = list(
        ProductViewSummary = list(
          Id = "string",
          ProductId = "string",
          Name = "string",
          Owner = "string",
          ShortDescription = "string",
          Type = "CLOUD_FORMATION_TEMPLATE"|"MARKETPLACE"|"TERRAFORM_OPEN_SOURCE",
          Distributor = "string",
          HasDefaultPath = TRUE|FALSE,
          SupportEmail = "string",
          SupportDescription = "string",
          SupportUrl = "string"
        ),
        Status = "AVAILABLE"|"CREATING"|"FAILED",
        ProductARN = "string",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        SourceConnection = list(
          Type = "CODESTAR",
          ConnectionParameters = list(
            CodeStar = list(
              ConnectionArn = "string",
              Repository = "string",
              Branch = "string",
              ArtifactPath = "string"
            )
          ),
          LastSync = list(
            LastSyncTime = as.POSIXct(
              "2015-01-01"
            ),
            LastSyncStatus = "SUCCEEDED"|"FAILED",
            LastSyncStatusMessage = "string",
            LastSuccessfulSyncTime = as.POSIXct(
              "2015-01-01"
            ),
            LastSuccessfulSyncProvisioningArtifactId = "string"
          )
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$update_product(
      AcceptLanguage = "string",
      Id = "string",
      Name = "string",
      Owner = "string",
      Description = "string",
      Distributor = "string",
      SupportDescription = "string",
      SupportEmail = "string",
      SupportUrl = "string",
      AddTags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      RemoveTags = list(
        "string"
      ),
      SourceConnection = list(
        Type = "CODESTAR",
        ConnectionParameters = list(
          CodeStar = list(
            ConnectionArn = "string",
            Repository = "string",
            Branch = "string",
            ArtifactPath = "string"
          )
        )
      )
    )
