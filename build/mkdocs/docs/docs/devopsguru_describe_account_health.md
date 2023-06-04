<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_describe_account_health</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the number of open reactive insights, the number of open proactive insights, and the number of metrics analyzed in your Amazon Web Services account

### Description

Returns the number of open reactive insights, the number of open
proactive insights, and the number of metrics analyzed in your Amazon
Web Services account. Use these numbers to gauge the health of
operations in your Amazon Web Services account.

### Usage

    devopsguru_describe_account_health()

### Value

A list with the following syntax:

    list(
      OpenReactiveInsights = 123,
      OpenProactiveInsights = 123,
      MetricsAnalyzed = 123,
      ResourceHours = 123,
      AnalyzedResourceCount = 123
    )

### Request syntax

    svc$describe_account_health()
