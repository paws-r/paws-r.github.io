<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_describe_provisioned_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the specified provisioned product

### Description

Gets information about the specified provisioned product.

### Usage

    servicecatalog_describe_provisioned_product(AcceptLanguage, Id, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_describe_provisioned_product_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_describe_provisioned_product_:_Id">Id</code></td>
<td><p>The provisioned product identifier. You must provide the name or
ID, but not both.</p>
<p>If you do not provide a name or ID, or you provide both name and ID,
an <code>InvalidParametersException</code> will occur.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_describe_provisioned_product_:_Name">Name</code></td>
<td><p>The name of the provisioned product. You must provide the name or
ID, but not both.</p>
<p>If you do not provide a name or ID, or you provide both name and ID,
an <code>InvalidParametersException</code> will occur.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProvisionedProductDetail = list(
        Name = "string",
        Arn = "string",
        Type = "string",
        Id = "string",
        Status = "AVAILABLE"|"UNDER_CHANGE"|"TAINTED"|"ERROR"|"PLAN_IN_PROGRESS",
        StatusMessage = "string",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        IdempotencyToken = "string",
        LastRecordId = "string",
        LastProvisioningRecordId = "string",
        LastSuccessfulProvisioningRecordId = "string",
        ProductId = "string",
        ProvisioningArtifactId = "string",
        LaunchRoleArn = "string"
      ),
      CloudWatchDashboards = list(
        list(
          Name = "string"
        )
      )
    )

### Request syntax

    svc$describe_provisioned_product(
      AcceptLanguage = "string",
      Id = "string",
      Name = "string"
    )
