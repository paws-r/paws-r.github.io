<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>savingsplans_create_savings_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Savings Plan

### Description

Creates a Savings Plan.

### Usage

    savingsplans_create_savings_plan(savingsPlanOfferingId, commitment,
      upfrontPaymentAmount, purchaseTime, clientToken, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="savingsplans_create_savings_plan_:_savingsPlanOfferingId">savingsPlanOfferingId</code></td>
<td><p>[required] The ID of the offering.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_create_savings_plan_:_commitment">commitment</code></td>
<td><p>[required] The hourly commitment, in USD. This is a value between
0.001 and 1 million. You cannot specify more than five digits after the
decimal point.</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_create_savings_plan_:_upfrontPaymentAmount">upfrontPaymentAmount</code></td>
<td><p>The up-front payment amount. This is a whole number between 50
and 99 percent of the total value of the Savings Plan. This parameter is
supported only if the payment option is <code
style="white-space: pre;">⁠Partial Upfront⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="savingsplans_create_savings_plan_:_purchaseTime">purchaseTime</code></td>
<td><p>The time at which to purchase the Savings Plan, in UTC format
(YYYY-MM-DDTHH:MM:SSZ).</p></td>
</tr>
<tr class="odd">
<td><code
id="savingsplans_create_savings_plan_:_clientToken">clientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.</p></td>
</tr>
<tr class="even">
<td><code id="savingsplans_create_savings_plan_:_tags">tags</code></td>
<td><p>One or more tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      savingsPlanId = "string"
    )

### Request syntax

    svc$create_savings_plan(
      savingsPlanOfferingId = "string",
      commitment = "string",
      upfrontPaymentAmount = "string",
      purchaseTime = as.POSIXct(
        "2015-01-01"
      ),
      clientToken = "string",
      tags = list(
        "string"
      )
    )
