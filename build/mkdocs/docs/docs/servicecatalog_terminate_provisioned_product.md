<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicecatalog_terminate_provisioned_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Terminates the specified provisioned product

### Description

Terminates the specified provisioned product.

This operation does not delete any records associated with the
provisioned product.

You can check the status of this request using `describe_record`.

### Usage

    servicecatalog_terminate_provisioned_product(ProvisionedProductName,
      ProvisionedProductId, TerminateToken, IgnoreErrors, AcceptLanguage,
      RetainPhysicalResources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicecatalog_terminate_provisioned_product_:_ProvisionedProductName">ProvisionedProductName</code></td>
<td><p>The name of the provisioned product. You cannot specify both
<code>ProvisionedProductName</code> and
<code>ProvisionedProductId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_terminate_provisioned_product_:_ProvisionedProductId">ProvisionedProductId</code></td>
<td><p>The identifier of the provisioned product. You cannot specify
both <code>ProvisionedProductName</code> and
<code>ProvisionedProductId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_terminate_provisioned_product_:_TerminateToken">TerminateToken</code></td>
<td><p>[required] An idempotency token that uniquely identifies the
termination request. This token is only valid during the termination
process. After the provisioned product is terminated, subsequent
requests to terminate the same provisioned product always return
<strong>ResourceNotFound</strong>.</p></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_terminate_provisioned_product_:_IgnoreErrors">IgnoreErrors</code></td>
<td><p>If set to true, Service Catalog stops managing the specified
provisioned product even if it cannot delete the underlying
resources.</p></td>
</tr>
<tr class="odd">
<td><code
id="servicecatalog_terminate_provisioned_product_:_AcceptLanguage">AcceptLanguage</code></td>
<td><p>The language code.</p>
<ul>
<li><p><code>jp</code> - Japanese</p></li>
<li><p><code>zh</code> - Chinese</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="servicecatalog_terminate_provisioned_product_:_RetainPhysicalResources">RetainPhysicalResources</code></td>
<td><p>When this boolean parameter is set to true, the
<code>terminate_provisioned_product</code> API deletes the Service
Catalog provisioned product. However, it does not remove the
CloudFormation stack, stack set, or the underlying resources of the
deleted provisioned product. The default value is false.</p></td>
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

    svc$terminate_provisioned_product(
      ProvisionedProductName = "string",
      ProvisionedProductId = "string",
      TerminateToken = "string",
      IgnoreErrors = TRUE|FALSE,
      AcceptLanguage = "string",
      RetainPhysicalResources = TRUE|FALSE
    )
