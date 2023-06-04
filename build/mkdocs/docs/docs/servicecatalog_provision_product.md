<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_provision_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provisions the specified product

### Description

Provisions the specified product.

A provisioned product is a resourced instance of a product. For example,
provisioning a product that's based on an CloudFormation template
launches an CloudFormation stack and its underlying resources. You can
check the status of this request using `describe_record`.

If the request contains a tag key with an empty list of values, there's
a tag conflict for that key. Don't include conflicted keys as tags, or
this will cause the error "Parameter validation failed: Missing required
parameter in Tags\[*N*\]:*Value*".

When provisioning a product that's been added to a portfolio, you must
grant your user, group, or role access to the portfolio. For more
information, see [Granting users
access](https://docs.aws.amazon.com/servicecatalog/latest/adminguide/catalogs_portfolios_users.html)
in the *Service Catalog User Guide*.

### Usage

    servicecatalog_provision_product(AcceptLanguage, ProductId, ProductName,
      ProvisioningArtifactId, ProvisioningArtifactName, PathId, PathName,
      ProvisionedProductName, ProvisioningParameters, ProvisioningPreferences,
      Tags, NotificationArns, ProvisionToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_provision_product_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_provision_product_:_ProductId">ProductId</code></td>
<td><p>The product identifier. You must provide the name or ID, but not
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_provision_product_:_ProductName">ProductName</code></td>
<td><p>The name of the product. You must provide the name or ID, but not
both.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_provision_product_:_ProvisioningArtifactId">ProvisioningArtifactId</code></td>
<td><p>The identifier of the provisioning artifact. You must provide the
name or ID, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_provision_product_:_ProvisioningArtifactName">ProvisioningArtifactName</code></td>
<td><p>The name of the provisioning artifact. You must provide the name
or ID, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_provision_product_:_PathId">PathId</code></td>
<td><p>The path identifier of the product. This value is optional if the
product has a default path, and required if the product has more than
one path. To list the paths for a product, use
<code>list_launch_paths</code>. You must provide the name or ID, but not
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_provision_product_:_PathName">PathName</code></td>
<td><p>The name of the path. You must provide the name or ID, but not
both.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_provision_product_:_ProvisionedProductName">ProvisionedProductName</code></td>
<td><p>[required] A user-friendly name for the provisioned product. This
value must be unique for the Amazon Web Services account and cannot be
updated after the product is provisioned.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_provision_product_:_ProvisioningParameters">ProvisioningParameters</code></td>
<td><p>Parameters specified by the administrator that are required for
provisioning the product.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_provision_product_:_ProvisioningPreferences">ProvisioningPreferences</code></td>
<td><p>An object that contains information about the provisioning
preferences for a stack set.</p></td>
</tr>
<tr class="odd">
<td><code id="servicecatalog_provision_product_:_Tags">Tags</code></td>
<td><p>One or more tags.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_provision_product_:_NotificationArns">NotificationArns</code></td>
<td><p>Passed to CloudFormation. The SNS topic ARNs to which to publish
stack-related events.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_provision_product_:_ProvisionToken">ProvisionToken</code></td>
<td><p>[required] An idempotency token that uniquely identifies the
provisioning request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RecordDetail = list(
        RecordId = "string",
        ProvisionedProductName = "string",
        Status = "CREATED"|"IN_PROGRESS"|"IN_PROGRESS_IN_ERROR"|"SUCCEEDED"|"FAILED",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        UpdatedTime = as.POSIXct(
          "2015-01-01"
        ),
        ProvisionedProductType = "string",
        RecordType = "string",
        ProvisionedProductId = "string",
        ProductId = "string",
        ProvisioningArtifactId = "string",
        PathId = "string",
        RecordErrors = list(
          list(
            Code = "string",
            Description = "string"
          )
        ),
        RecordTags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        LaunchRoleArn = "string"
      )
    )

### Request syntax

    svc$provision_product(
      AcceptLanguage = "string",
      ProductId = "string",
      ProductName = "string",
      ProvisioningArtifactId = "string",
      ProvisioningArtifactName = "string",
      PathId = "string",
      PathName = "string",
      ProvisionedProductName = "string",
      ProvisioningParameters = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ProvisioningPreferences = list(
        StackSetAccounts = list(
          "string"
        ),
        StackSetRegions = list(
          "string"
        ),
        StackSetFailureToleranceCount = 123,
        StackSetFailureTolerancePercentage = 123,
        StackSetMaxConcurrencyCount = 123,
        StackSetMaxConcurrencyPercentage = 123
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NotificationArns = list(
        "string"
      ),
      ProvisionToken = "string"
    )
