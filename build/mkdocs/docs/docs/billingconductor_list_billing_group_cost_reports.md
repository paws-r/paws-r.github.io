<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_list_billing_group_cost_reports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A paginated call to retrieve a summary report of actual Amazon Web Services charges and the calculated Amazon Web Services charges based on the associated pricing plan of a billing group

### Description

A paginated call to retrieve a summary report of actual Amazon Web
Services charges and the calculated Amazon Web Services charges based on
the associated pricing plan of a billing group.

### Usage

    billingconductor_list_billing_group_cost_reports(BillingPeriod,
      MaxResults, NextToken, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_list_billing_group_cost_reports_:_BillingPeriod">BillingPeriod</code></td>
<td><p>The preferred billing period for your report.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_billing_group_cost_reports_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of reports to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_list_billing_group_cost_reports_:_NextToken">NextToken</code></td>
<td><p>The pagination token that's used on subsequent calls to get
reports.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_billing_group_cost_reports_:_Filters">Filters</code></td>
<td><p>A <code>ListBillingGroupCostReportsFilter</code> to specify
billing groups to retrieve reports from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BillingGroupCostReports = list(
        list(
          Arn = "string",
          AWSCost = "string",
          ProformaCost = "string",
          Margin = "string",
          MarginPercentage = "string",
          Currency = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_billing_group_cost_reports(
      BillingPeriod = "string",
      MaxResults = 123,
      NextToken = "string",
      Filters = list(
        BillingGroupArns = list(
          "string"
        )
      )
    )
