<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_create_pricing_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a pricing rule can be associated to a pricing plan, or a set of pricing plans

### Description

Creates a pricing rule can be associated to a pricing plan, or a set of
pricing plans.

### Usage

    billingconductor_create_pricing_rule(ClientToken, Name, Description,
      Scope, Type, ModifierPercentage, Service, Tags, BillingEntity, Tiering,
      UsageType, Operation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_create_pricing_rule_:_ClientToken">ClientToken</code></td>
<td><p>The token that's needed to support idempotency. Idempotency isn't
currently supported, but will be implemented in a future
update.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_pricing_rule_:_Name">Name</code></td>
<td><p>[required] The pricing rule name. The names must be unique to
each pricing rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_pricing_rule_:_Description">Description</code></td>
<td><p>The pricing rule description.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_pricing_rule_:_Scope">Scope</code></td>
<td><p>[required] The scope of pricing rule that indicates if it's
globally applicable, or it's service-specific.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_pricing_rule_:_Type">Type</code></td>
<td><p>[required] The type of pricing rule.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_pricing_rule_:_ModifierPercentage">ModifierPercentage</code></td>
<td><p>A percentage modifier that's applied on the public pricing
rates.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_pricing_rule_:_Service">Service</code></td>
<td><p>If the <code>Scope</code> attribute is set to
<code>SERVICE</code> or <code>SKU</code>, the attribute indicates which
service the <code>PricingRule</code> is applicable for.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_pricing_rule_:_Tags">Tags</code></td>
<td><p>A map that contains tag keys and tag values that are attached to
a pricing rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_pricing_rule_:_BillingEntity">BillingEntity</code></td>
<td><p>The seller of services provided by Amazon Web Services, their
affiliates, or third-party providers selling services via Amazon Web
Services Marketplace.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_pricing_rule_:_Tiering">Tiering</code></td>
<td><p>The set of tiering configurations for the pricing rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_create_pricing_rule_:_UsageType">UsageType</code></td>
<td><p>Usage type is the unit that each service uses to measure the
usage of a specific type of resource.</p>
<p>If the <code>Scope</code> attribute is set to <code>SKU</code>, this
attribute indicates which usage type the <code>PricingRule</code> is
modifying. For example, <code>USW2-BoxUsage:m2.2xlarge</code> describes
an<code
style="white-space: pre;">⁠ M2 High Memory Double Extra Large⁠</code>
instance in the US West (Oregon) Region.</p>
<div class="sourceCode">
<pre><code>&lt;/p&gt;</code></pre>
</div></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_create_pricing_rule_:_Operation">Operation</code></td>
<td><p>Operation is the specific Amazon Web Services action covered by
this line item. This describes the specific usage of the line item.</p>
<p>If the <code>Scope</code> attribute is set to <code>SKU</code>, this
attribute indicates which operation the <code>PricingRule</code> is
modifying. For example, a value of <code>RunInstances:0202</code>
indicates the operation of running an Amazon EC2 instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$create_pricing_rule(
      ClientToken = "string",
      Name = "string",
      Description = "string",
      Scope = "GLOBAL"|"SERVICE"|"BILLING_ENTITY"|"SKU",
      Type = "MARKUP"|"DISCOUNT"|"TIERING",
      ModifierPercentage = 123.0,
      Service = "string",
      Tags = list(
        "string"
      ),
      BillingEntity = "string",
      Tiering = list(
        FreeTier = list(
          Activated = TRUE|FALSE
        )
      ),
      UsageType = "string",
      Operation = "string"
    )
