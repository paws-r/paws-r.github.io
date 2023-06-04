<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchlogs_delete_subscription_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified subscription filter

### Description

Deletes the specified subscription filter.

### Usage

    cloudwatchlogs_delete_subscription_filter(logGroupName, filterName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchlogs_delete_subscription_filter_:_logGroupName">logGroupName</code></td>
<td><p>[required] The name of the log group.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchlogs_delete_subscription_filter_:_filterName">filterName</code></td>
<td><p>[required] The name of the subscription filter.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_subscription_filter(
      logGroupName = "string",
      filterName = "string"
    )
