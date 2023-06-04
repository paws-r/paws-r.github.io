<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_usage_totals</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves (queries) aggregated usage data for an account

### Description

Retrieves (queries) aggregated usage data for an account.

### Usage

    macie2_get_usage_totals(timeRange)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_get_usage_totals_:_timeRange">timeRange</code></td>
<td><p>The inclusive time period to retrieve the data for. Valid values
are: MONTH_TO_DATE, for the current calendar month to date; and,
PAST_30_DAYS, for the preceding 30 days. If you don't specify a value
for this parameter, Amazon Macie provides aggregated usage data for the
preceding 30 days.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      timeRange = "MONTH_TO_DATE"|"PAST_30_DAYS",
      usageTotals = list(
        list(
          currency = "USD",
          estimatedCost = "string",
          type = "DATA_INVENTORY_EVALUATION"|"SENSITIVE_DATA_DISCOVERY"|"AUTOMATED_SENSITIVE_DATA_DISCOVERY"|"AUTOMATED_OBJECT_MONITORING"
        )
      )
    )

### Request syntax

    svc$get_usage_totals(
      timeRange = "string"
    )
