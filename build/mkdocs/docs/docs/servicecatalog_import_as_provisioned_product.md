<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_import_as_provisioned_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests the import of a resource as an Service Catalog provisioned product that is associated to an Service Catalog product and provisioning artifact

### Description

Requests the import of a resource as an Service Catalog provisioned
product that is associated to an Service Catalog product and
provisioning artifact. Once imported, all supported governance actions
are supported on the provisioned product.

Resource import only supports CloudFormation stack ARNs. CloudFormation
StackSets, and non-root nested stacks are not supported.

The CloudFormation stack must have one of the following statuses to be
imported: `CREATE_COMPLETE`, `UPDATE_COMPLETE`,
`UPDATE_ROLLBACK_COMPLETE`, `IMPORT_COMPLETE`, and
`IMPORT_ROLLBACK_COMPLETE`.

Import of the resource requires that the CloudFormation stack template
matches the associated Service Catalog product provisioning artifact.

When you import an existing CloudFormation stack into a portfolio,
constraints that are associated with the product aren't applied during
the import process. The constraints are applied after you call
`update_provisioned_product` for the provisioned product.

The user or role that performs this operation must have the
`cloudformation:GetTemplate` and `cloudformation:DescribeStacks` IAM
policy permissions.

### Usage

    servicecatalog_import_as_provisioned_product(AcceptLanguage, ProductId,
      ProvisioningArtifactId, ProvisionedProductName, PhysicalId,
      IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_import_as_provisioned_product_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_import_as_provisioned_product_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_import_as_provisioned_product_:_ProvisioningArtifactId">ProvisioningArtifactId</code></td>
<td><p>[required] The identifier of the provisioning artifact.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_import_as_provisioned_product_:_ProvisionedProductName">ProvisionedProductName</code></td>
<td><p>[required] The user-friendly name of the provisioned product. The
value must be unique for the Amazon Web Services account. The name
cannot be updated after the product is provisioned.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_import_as_provisioned_product_:_PhysicalId">PhysicalId</code></td>
<td><p>[required] The unique identifier of the resource to be imported.
It only currently supports CloudFormation stack IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_import_as_provisioned_product_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] A unique identifier that you provide to ensure
idempotency. If multiple requests differ only by the idempotency token,
the same response is returned for each repeated request.</p></td>
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

    svc$import_as_provisioned_product(
      AcceptLanguage = "string",
      ProductId = "string",
      ProvisioningArtifactId = "string",
      ProvisionedProductName = "string",
      PhysicalId = "string",
      IdempotencyToken = "string"
    )
