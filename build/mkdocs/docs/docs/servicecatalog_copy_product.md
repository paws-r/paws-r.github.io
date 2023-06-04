<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_copy_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies the specified source product to the specified target product or a new product

### Description

Copies the specified source product to the specified target product or a
new product.

You can copy a product to the same account or another account. You can
copy a product to the same Region or another Region. If you copy a
product to another account, you must first share the product in a
portfolio using `create_portfolio_share`.

This operation is performed asynchronously. To track the progress of the
operation, use `describe_copy_product_status`.

### Usage

    servicecatalog_copy_product(AcceptLanguage, SourceProductArn,
      TargetProductId, TargetProductName,
      SourceProvisioningArtifactIdentifiers, CopyOptions, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_copy_product_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_copy_product_:_SourceProductArn">SourceProductArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the source
product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_copy_product_:_TargetProductId">TargetProductId</code></td>
<td><p>The identifier of the target product. By default, a new product
is created.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_copy_product_:_TargetProductName">TargetProductName</code></td>
<td><p>A name for the target product. The default is the name of the
source product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_copy_product_:_SourceProvisioningArtifactIdentifiers">SourceProvisioningArtifactIdentifiers</code></td>
<td><p>The identifiers of the provisioning artifacts (also known as
versions) of the product to copy. By default, all provisioning artifacts
are copied.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_copy_product_:_CopyOptions">CopyOptions</code></td>
<td><p>The copy options. If the value is <code>CopyTags</code>, the tags
from the source product are copied to the target product.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_copy_product_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] A unique identifier that you provide to ensure
idempotency. If multiple requests differ only by the idempotency token,
the same response is returned for each repeated request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CopyProductToken = "string"
    )

### Request syntax

    svc$copy_product(
      AcceptLanguage = "string",
      SourceProductArn = "string",
      TargetProductId = "string",
      TargetProductName = "string",
      SourceProvisioningArtifactIdentifiers = list(
        list(
          "string"
        )
      ),
      CopyOptions = list(
        "CopyTags"
      ),
      IdempotencyToken = "string"
    )
