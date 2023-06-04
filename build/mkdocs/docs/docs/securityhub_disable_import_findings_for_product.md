<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_disable_import_findings_for_product</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables the integration of the specified product with Security Hub

### Description

Disables the integration of the specified product with Security Hub.
After the integration is disabled, findings from that product are no
longer sent to Security Hub.

### Usage

    securityhub_disable_import_findings_for_product(ProductSubscriptionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_disable_import_findings_for_product_:_ProductSubscriptionArn">ProductSubscriptionArn</code></td>
<td><p>[required] The ARN of the integrated product to disable the
integration for.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_import_findings_for_product(
      ProductSubscriptionArn = "string"
    )

### Examples

    ## Not run: 
    # The following example ends an integration between Security Hub and the
    # specified product that sends findings to Security Hub. After the
    # integration ends, the product no longer sends findings to Security  Hub.
    svc$disable_import_findings_for_product(
      ProductSubscriptionArn = "arn:aws:securityhub:us-east-1:517716713836:prod..."
    )

    ## End(Not run)
