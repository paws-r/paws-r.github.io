<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_describe_cost_category_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the name, Amazon Resource Name (ARN), rules, definition, and effective dates of a Cost Category that's defined in the account

### Description

Returns the name, Amazon Resource Name (ARN), rules, definition, and
effective dates of a Cost Category that's defined in the account.

You have the option to use `EffectiveOn` to return a Cost Category
that's active on a specific date. If there's no `EffectiveOn` specified,
you see a Cost Category that's effective on the current date. If Cost
Category is still effective, `EffectiveEnd` is omitted in the response.

### Usage

    costexplorer_describe_cost_category_definition(CostCategoryArn,
      EffectiveOn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_describe_cost_category_definition_:_CostCategoryArn">CostCategoryArn</code></td>
<td><p>[required] The unique identifier for your Cost Category.</p></td>
</tr>
<tr class="even">
<td><code
id="costexplorer_describe_cost_category_definition_:_EffectiveOn">EffectiveOn</code></td>
<td><p>The date when the Cost Category was effective.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CostCategory = list(
        CostCategoryArn = "string",
        EffectiveStart = "string",
        EffectiveEnd = "string",
        Name = "string",
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
        ),
        ProcessingStatus = list(
          list(
            Component = "COST_EXPLORER",
            Status = "PROCESSING"|"APPLIED"
          )
        ),
        DefaultValue = "string"
      )
    )

### Request syntax

    svc$describe_cost_category_definition(
      CostCategoryArn = "string",
      EffectiveOn = "string"
    )
