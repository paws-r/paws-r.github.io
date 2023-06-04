<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_list_billing_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A paginated call to retrieve a list of billing groups for the given billing period

### Description

A paginated call to retrieve a list of billing groups for the given
billing period. If you don't provide a billing group, the current
billing period is used.

### Usage

    billingconductor_list_billing_groups(BillingPeriod, MaxResults,
      NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_list_billing_groups_:_BillingPeriod">BillingPeriod</code></td>
<td><p>The preferred billing period to get billing groups.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_billing_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of billing groups to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_list_billing_groups_:_NextToken">NextToken</code></td>
<td><p>The pagination token that's used on subsequent calls to get
billing groups.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_billing_groups_:_Filters">Filters</code></td>
<td><p>A <code>ListBillingGroupsFilter</code> that specifies the billing
group and pricing plan to retrieve billing group information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BillingGroups = list(
        list(
          Name = "string",
          Arn = "string",
          Description = "string",
          PrimaryAccountId = "string",
          ComputationPreference = list(
            PricingPlanArn = "string"
          ),
          Size = 123,
          CreationTime = 123,
          LastModifiedTime = 123,
          Status = "ACTIVE"|"PRIMARY_ACCOUNT_MISSING",
          StatusReason = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_billing_groups(
      BillingPeriod = "string",
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        Arns = list(
          "string"
        ),
        PricingPlan = "string",
        Statuses = list(
          "ACTIVE"|"PRIMARY_ACCOUNT_MISSING"
        )
      )
    )
