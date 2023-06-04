<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>savingsplans_delete_queued_savings_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the queued purchase for the specified Savings Plan

### Description

Deletes the queued purchase for the specified Savings Plan.

### Usage

    savingsplans_delete_queued_savings_plan(savingsPlanId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="savingsplans_delete_queued_savings_plan_:_savingsPlanId">savingsPlanId</code></td>
<td><p>[required] The ID of the Savings Plan.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_queued_savings_plan(
      savingsPlanId = "string"
    )
