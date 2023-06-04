<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_execute_provisioned_product_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provisions or modifies a product based on the resource changes for the specified plan

### Description

Provisions or modifies a product based on the resource changes for the
specified plan.

### Usage

    servicecatalog_execute_provisioned_product_plan(AcceptLanguage, PlanId,
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
id="servicecatalog_execute_provisioned_product_plan_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_execute_provisioned_product_plan_:_PlanId">PlanId</code></td>
<td><p>[required] The plan identifier.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_execute_provisioned_product_plan_:_IdempotencyToken">IdempotencyToken</code></td>
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

    svc$execute_provisioned_product_plan(
      AcceptLanguage = "string",
      PlanId = "string",
      IdempotencyToken = "string"
    )
