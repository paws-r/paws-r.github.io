<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_update_pricing_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing pricing rule

### Description

Updates an existing pricing rule.

### Usage

    billingconductor_update_pricing_rule(Arn, Name, Description, Type,
      ModifierPercentage, Tiering)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_update_pricing_rule_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the pricing rule to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_update_pricing_rule_:_Name">Name</code></td>
<td><p>The new name of the pricing rule. The name must be unique to each
pricing rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_update_pricing_rule_:_Description">Description</code></td>
<td><p>The new description for the pricing rule.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_update_pricing_rule_:_Type">Type</code></td>
<td><p>The new pricing rule type.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_update_pricing_rule_:_ModifierPercentage">ModifierPercentage</code></td>
<td><p>The new modifier to show pricing plan rates as a
percentage.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_update_pricing_rule_:_Tiering">Tiering</code></td>
<td><p>The set of tiering configurations for the pricing rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      Name = "string",
      Description = "string",
      Scope = "GLOBAL"|"SERVICE"|"BILLING_ENTITY"|"SKU",
      Type = "MARKUP"|"DISCOUNT"|"TIERING",
      ModifierPercentage = 123.0,
      Service = "string",
      AssociatedPricingPlanCount = 123,
      LastModifiedTime = 123,
      BillingEntity = "string",
      Tiering = list(
        FreeTier = list(
          Activated = TRUE|FALSE
        )
      ),
      UsageType = "string",
      Operation = "string"
    )

### Request syntax

    svc$update_pricing_rule(
      Arn = "string",
      Name = "string",
      Description = "string",
      Type = "MARKUP"|"DISCOUNT"|"TIERING",
      ModifierPercentage = 123.0,
      Tiering = list(
        FreeTier = list(
          Activated = TRUE|FALSE
        )
      )
    )
