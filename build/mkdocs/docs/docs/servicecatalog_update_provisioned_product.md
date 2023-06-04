<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_update_provisioned_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests updates to the configuration of the specified provisioned product

### Description

Requests updates to the configuration of the specified provisioned
product.

If there are tags associated with the object, they cannot be updated or
added. Depending on the specific updates requested, this operation can
update with no interruption, with some interruption, or replace the
provisioned product entirely.

You can check the status of this request using `describe_record`.

### Usage

    servicecatalog_update_provisioned_product(AcceptLanguage,
      ProvisionedProductName, ProvisionedProductId, ProductId, ProductName,
      ProvisioningArtifactId, ProvisioningArtifactName, PathId, PathName,
      ProvisioningParameters, ProvisioningPreferences, Tags, UpdateToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioned_product_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_provisioned_product_:_ProvisionedProductName">ProvisionedProductName</code></td>
<td><p>The name of the provisioned product. You cannot specify both
<code>ProvisionedProductName</code> and
<code>ProvisionedProductId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioned_product_:_ProvisionedProductId">ProvisionedProductId</code></td>
<td><p>The identifier of the provisioned product. You must provide the
name or ID, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_provisioned_product_:_ProductId">ProductId</code></td>
<td><p>The identifier of the product. You must provide the name or ID,
but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioned_product_:_ProductName">ProductName</code></td>
<td><p>The name of the product. You must provide the name or ID, but not
both.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_provisioned_product_:_ProvisioningArtifactId">ProvisioningArtifactId</code></td>
<td><p>The identifier of the provisioning artifact.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioned_product_:_ProvisioningArtifactName">ProvisioningArtifactName</code></td>
<td><p>The name of the provisioning artifact. You must provide the name
or ID, but not both.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_provisioned_product_:_PathId">PathId</code></td>
<td><p>The path identifier. This value is optional if the product has a
default path, and required if the product has more than one path. You
must provide the name or ID, but not both.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioned_product_:_PathName">PathName</code></td>
<td><p>The name of the path. You must provide the name or ID, but not
both.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_provisioned_product_:_ProvisioningParameters">ProvisioningParameters</code></td>
<td><p>The new parameters.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioned_product_:_ProvisioningPreferences">ProvisioningPreferences</code></td>
<td><p>An object that contains information about the provisioning
preferences for a stack set.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_update_provisioned_product_:_Tags">Tags</code></td>
<td><p>One or more tags. Requires the product to have
<code>RESOURCE_UPDATE</code> constraint with
<code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code>
to allow tag updates.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_update_provisioned_product_:_UpdateToken">UpdateToken</code></td>
<td><p>[required] The idempotency token that uniquely identifies the
provisioning update request.</p></td>
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

    svc$update_provisioned_product(
      AcceptLanguage = "string",
      ProvisionedProductName = "string",
      ProvisionedProductId = "string",
      ProductId = "string",
      ProductName = "string",
      ProvisioningArtifactId = "string",
      ProvisioningArtifactName = "string",
      PathId = "string",
      PathName = "string",
      ProvisioningParameters = list(
        list(
          Key = "string",
          Value = "string",
          UsePreviousValue = TRUE|FALSE
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
        StackSetMaxConcurrencyPercentage = 123,
        StackSetOperationType = "CREATE"|"UPDATE"|"DELETE"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      UpdateToken = "string"
    )
