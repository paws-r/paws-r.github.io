<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_update_cost_category_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing Cost Category

### Description

Updates an existing Cost Category. Changes made to the Cost Category
rules will be used to categorize the current month’s expenses and future
expenses. This won’t change categorization for the previous months.

### Usage

    costexplorer_update_cost_category_definition(CostCategoryArn,
      EffectiveStart, RuleVersion, Rules, DefaultValue, SplitChargeRules)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_update_cost_category_definition_:_CostCategoryArn">CostCategoryArn</code></td>
<td><p>[required] The unique identifier for your Cost Category.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_update_cost_category_definition_:_EffectiveStart">EffectiveStart</code></td>
<td><p>The Cost Category's effective start date. It can only be a
billing start date (first day of the month). If the date isn't provided,
it's the first day of the current month. Dates can't be before the
previous twelve months, or in the future.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_update_cost_category_definition_:_RuleVersion">RuleVersion</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_update_cost_category_definition_:_Rules">Rules</code></td>
<td><p>[required] The <code>Expression</code> object used to categorize
costs. For more information, see <a
href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_CostCategoryRule.html">CostCategoryRule</a>
.</p></td>
</tr>
<tr class="odd">
<td><code
id="costexplorer_update_cost_category_definition_:_DefaultValue">DefaultValue</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_update_cost_category_definition_:_SplitChargeRules">SplitChargeRules</code></td>
<td><p>The split charge rules used to allocate your charges between your
Cost Category values.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CostCategoryArn = "string",
      EffectiveStart = "string"
    )

### Request syntax

    svc$update_cost_category_definition(
      CostCategoryArn = "string",
      EffectiveStart = "string",
      RuleVersion = "CostCategoryExpression.v1",
      Rules = list(
        list(
          Value = "string",
          Rule = list(
            Or = list(
              list()
            ),
            And = list(
              list()
            ),
            Not = list(),
            Dimensions = list(
              Key = "AZ"|"INSTANCE_TYPE"|"LINKED_ACCOUNT"|"LINKED_ACCOUNT_NAME"|"OPERATION"|"PURCHASE_TYPE"|"REGION"|"SERVICE"|"SERVICE_CODE"|"USAGE_TYPE"|"USAGE_TYPE_GROUP"|"RECORD_TYPE"|"OPERATING_SYSTEM"|"TENANCY"|"SCOPE"|"PLATFORM"|"SUBSCRIPTION_ID"|"LEGAL_ENTITY_NAME"|"DEPLOYMENT_OPTION"|"DATABASE_ENGINE"|"CACHE_ENGINE"|"INSTANCE_TYPE_FAMILY"|"BILLING_ENTITY"|"RESERVATION_ID"|"RESOURCE_ID"|"RIGHTSIZING_TYPE"|"SAVINGS_PLANS_TYPE"|"SAVINGS_PLAN_ARN"|"PAYMENT_OPTION"|"AGREEMENT_END_DATE_TIME_AFTER"|"AGREEMENT_END_DATE_TIME_BEFORE"|"INVOICING_ENTITY"|"ANOMALY_TOTAL_IMPACT_ABSOLUTE"|"ANOMALY_TOTAL_IMPACT_PERCENTAGE",
              Values = list(
                "string"
              ),
              MatchOptions = list(
                "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
              )
            ),
            Tags = list(
              Key = "string",
              Values = list(
                "string"
              ),
              MatchOptions = list(
                "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
              )
            ),
            CostCategories = list(
              Key = "string",
              Values = list(
                "string"
              ),
              MatchOptions = list(
                "EQUALS"|"ABSENT"|"STARTS_WITH"|"ENDS_WITH"|"CONTAINS"|"CASE_SENSITIVE"|"CASE_INSENSITIVE"|"GREATER_THAN_OR_EQUAL"
              )
            )
          ),
          InheritedValue = list(
            DimensionName = "LINKED_ACCOUNT_NAME"|"TAG",
            DimensionKey = "string"
          ),
          Type = "REGULAR"|"INHERITED_VALUE"
        )
      ),
      DefaultValue = "string",
      SplitChargeRules = list(
        list(
          Source = "string",
          Targets = list(
            "string"
          ),
          Method = "FIXED"|"PROPORTIONAL"|"EVEN",
          Parameters = list(
            list(
              Type = "ALLOCATION_PERCENTAGES",
              Values = list(
                "string"
              )
            )
          )
        )
      )
    )
