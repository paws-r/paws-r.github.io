<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_list_monitors</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of monitors created with the CreateMonitor operation and CreateAutoPredictor operation

### Description

Returns a list of monitors created with the `create_monitor` operation
and `create_auto_predictor` operation. For each monitor resource, this
operation returns of a summary of its properties, including its Amazon
Resource Name (ARN). You can retrieve a complete set of properties of a
monitor resource by specify the monitor's ARN in the `describe_monitor`
operation.

### Usage

    forecastservice_list_monitors(NextToken, MaxResults, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_list_monitors_:_NextToken">NextToken</code></td>
<td><p>If the result of the previous request was truncated, the response
includes a <code>NextToken</code>. To retrieve the next set of results,
use the token in the next request. Tokens expire after 24
hours.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_list_monitors_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of monitors to include in the
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_list_monitors_:_Filters">Filters</code></td>
<td><p>An array of filters. For each filter, provide a condition and a
match statement. The condition is either <code>IS</code> or
<code>IS_NOT</code>, which specifies whether to include or exclude the
resources that match the statement from the list. The match statement
consists of a key and a value.</p>
<p><strong>Filter properties</strong></p>
<ul>
<li><p><code>Condition</code> - The condition to apply. Valid values are
<code>IS</code> and <code>IS_NOT</code>.</p></li>
<li><p><code>Key</code> - The name of the parameter to filter on. The
only valid value is <code>Status</code>.</p></li>
<li><p><code>Value</code> - The value to match.</p></li>
</ul>
<p>For example, to list all monitors who's status is ACTIVE, you would
specify:</p>
<p><code
style="white-space: pre;">⁠"Filters": [ { "Condition": "IS", "Key": "Status", "Value": "ACTIVE" } ]⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Monitors = list(
        list(
          MonitorArn = "string",
          MonitorName = "string",
          ResourceArn = "string",
          Status = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModificationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_monitors(
      NextToken = "string",
      MaxResults = 123,
      Filters = list(
        list(
          Key = "string",
          Value = "string",
          Condition = "IS"|"IS_NOT"
        )
      )
    )
