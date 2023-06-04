<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_enable_import_findings_for_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables the integration of a partner product with Security Hub

### Description

Enables the integration of a partner product with Security Hub.
Integrated products send findings to Security Hub.

When you enable a product integration, a permissions policy that grants
permission for the product to send findings to Security Hub is applied.

### Usage

    securityhub_enable_import_findings_for_product(ProductArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_enable_import_findings_for_product_:_ProductArn">ProductArn</code></td>
<td><p>[required] The ARN of the product to enable the integration
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProductSubscriptionArn = "string"
    )

### Request syntax

    svc$enable_import_findings_for_product(
      ProductArn = "string"
    )

### Examples

    ## Not run: 
    # The following example activates an integration between Security Hub and
    # a third party partner product that sends findings to Security Hub.
    svc$enable_import_findings_for_product(
      ProductArn = "arn:aws:securityhub:us-east-1:517716713836:product/crowdstr..."
    )

    ## End(Not run)
