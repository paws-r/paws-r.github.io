<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_create_provisioned_product_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a plan

### Description

Creates a plan.

A plan includes the list of resources to be created (when provisioning a
new product) or modified (when updating a provisioned product) when the
plan is executed.

You can create one plan for each provisioned product. To create a plan
for an existing provisioned product, the product status must be
AVAILABLE or TAINTED.

To view the resource changes in the change set, use
`describe_provisioned_product_plan`. To create or modify the provisioned
product, use `execute_provisioned_product_plan`.

### Usage

    servicecatalog_create_provisioned_product_plan(AcceptLanguage, PlanName,
      PlanType, NotificationArns, PathId, ProductId, ProvisionedProductName,
      ProvisioningArtifactId, ProvisioningParameters, IdempotencyToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_create_provisioned_product_plan_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_provisioned_product_plan_:_PlanName">PlanName</code></td>
<td><p>[required] The name of the plan.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_provisioned_product_plan_:_PlanType">PlanType</code></td>
<td><p>[required] The plan type.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_provisioned_product_plan_:_NotificationArns">NotificationArns</code></td>
<td><p>Passed to CloudFormation. The SNS topic ARNs to which to publish
stack-related events.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_provisioned_product_plan_:_PathId">PathId</code></td>
<td><p>The path identifier of the product. This value is optional if the
product has a default path, and required if the product has more than
one path. To list the paths for a product, use
<code>list_launch_paths</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_provisioned_product_plan_:_ProductId">ProductId</code></td>
<td><p>[required] The product identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_provisioned_product_plan_:_ProvisionedProductName">ProvisionedProductName</code></td>
<td><p>[required] A user-friendly name for the provisioned product. This
value must be unique for the Amazon Web Services account and cannot be
updated after the product is provisioned.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_provisioned_product_plan_:_ProvisioningArtifactId">ProvisioningArtifactId</code></td>
<td><p>[required] The identifier of the provisioning artifact.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_provisioned_product_plan_:_ProvisioningParameters">ProvisioningParameters</code></td>
<td><p>Parameters specified by the administrator that are required for
provisioning the product.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_create_provisioned_product_plan_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] A unique identifier that you provide to ensure
idempotency. If multiple requests differ only by the idempotency token,
the same response is returned for each repeated request.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_create_provisioned_product_plan_:_Tags">Tags</code></td>
<td><p>One or more tags.</p>
<p>If the plan is for an existing provisioned product, the product must
have a <code>RESOURCE_UPDATE</code> constraint with
<code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code>
to allow tag updates.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PlanName = "string",
      PlanId = "string",
      ProvisionProductId = "string",
      ProvisionedProductName = "string",
      ProvisioningArtifactId = "string"
    )

### Request syntax

    svc$create_provisioned_product_plan(
      AcceptLanguage = "string",
      PlanName = "string",
      PlanType = "CLOUDFORMATION",
      NotificationArns = list(
        "string"
      ),
      PathId = "string",
      ProductId = "string",
      ProvisionedProductName = "string",
      ProvisioningArtifactId = "string",
      ProvisioningParameters = list(
        list(
          Key = "string",
          Value = "string",
          UsePreviousValue = TRUE|FALSE
        )
      ),
      IdempotencyToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
