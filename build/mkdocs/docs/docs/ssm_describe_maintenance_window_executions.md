<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_maintenance_window_executions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the executions of a maintenance window

### Description

Lists the executions of a maintenance window. This includes information
about when the maintenance window was scheduled to be active, and
information about tasks registered and run with the maintenance window.

### Usage

    ssm_describe_maintenance_window_executions(WindowId, Filters,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_executions_:_WindowId">WindowId</code></td>
<td><p>[required] The ID of the maintenance window whose executions
should be retrieved.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_executions_:_Filters">Filters</code></td>
<td><p>Each entry in the array is a structure containing:</p>
<ul>
<li><p>Key. A string between 1 and 128 characters. Supported keys
include <code>ExecutedBefore</code> and
<code>ExecutedAfter</code>.</p></li>
<li><p>Values. An array of strings, each between 1 and 256 characters.
Supported values are date/time strings in a valid ISO 8601 date/time
format, such as <code
style="white-space: pre;">⁠2021-11-04T05:00:00Z⁠</code>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_executions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_executions_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowExecutions = list(
        list(
          WindowId = "string",
          WindowExecutionId = "string",
          Status = "PENDING"|"IN_PROGRESS"|"SUCCESS"|"FAILED"|"TIMED_OUT"|"CANCELLING"|"CANCELLED"|"SKIPPED_OVERLAPPING",
          StatusDetails = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_maintenance_window_executions(
      WindowId = "string",
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
