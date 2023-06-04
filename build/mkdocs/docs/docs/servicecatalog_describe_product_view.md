<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_product_view</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified product

### Description

Gets information about the specified product.

### Usage

    servicecatalog_describe_product_view(AcceptLanguage, Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_product_view_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="servicecatalog_describe_product_view_:_Id">Id</code></td>
<td><p>[required] The product view identifier.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      ProvisioningArtifacts = list(
        list(
          Id = "string",
          Name = "string",
          Description = "string",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          Guidance = "DEFAULT"|"DEPRECATED"
        )
      )
    )

### Request syntax

    svc$describe_product_view(
      AcceptLanguage = "string",
      Id = "string"
    )
