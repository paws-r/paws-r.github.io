<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>billingconductor_list_account_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is a paginated call to list linked accounts that are linked to the payer account for the specified time period

### Description

This is a paginated call to list linked accounts that are linked to the
payer account for the specified time period. If no information is
provided, the current billing period is used. The response will
optionally include the billing group that's associated with the linked
account.

### Usage

    billingconductor_list_account_associations(BillingPeriod, Filters,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="billingconductor_list_account_associations_:_BillingPeriod">BillingPeriod</code></td>
<td><p>The preferred billing period to get account
associations.</p></td>
</tr>
<tr class="even">
<td><code
id="billingconductor_list_account_associations_:_Filters">Filters</code></td>
<td><p>The filter on the account ID of the linked account, or any of the
following:</p>
<p><code>MONITORED</code>: linked accounts that are associated to
billing groups.</p>
<p><code>UNMONITORED</code>: linked accounts that aren't associated to
billing groups.</p>
<p><code style="white-space: pre;">⁠Billing Group Arn⁠</code>: linked
accounts that are associated to the provided billing group Arn.</p></td>
</tr>
<tr class="odd">
<td><code
id="billingconductor_list_account_associations_:_NextToken">NextToken</code></td>
<td><p>The pagination token that's used on subsequent calls to retrieve
accounts.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LinkedAccounts = list(
        list(
          AccountId = "string",
          BillingGroupArn = "string",
          AccountName = "string",
          AccountEmail = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_account_associations(
      BillingPeriod = "string",
      Filters = list(
        Association = "string",
        AccountId = "string",
        AccountIds = list(
          "string"
        )
      ),
      NextToken = "string"
    )
