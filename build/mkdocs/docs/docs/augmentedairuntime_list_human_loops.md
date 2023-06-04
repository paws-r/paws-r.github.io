<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>augmentedairuntime_list_human_loops</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about human loops, given the specified parameters

### Description

Returns information about human loops, given the specified parameters.
If a human loop was deleted, it will not be included.

### Usage

    augmentedairuntime_list_human_loops(CreationTimeAfter,
      CreationTimeBefore, FlowDefinitionArn, SortOrder, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="augmentedairuntime_list_human_loops_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>(Optional) The timestamp of the date when you want the human
loops to begin in ISO 8601 format. For example,
<code>2020-02-24</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="augmentedairuntime_list_human_loops_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>(Optional) The timestamp of the date before which you want the
human loops to begin in ISO 8601 format. For example,
<code>2020-02-24</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="augmentedairuntime_list_human_loops_:_FlowDefinitionArn">FlowDefinitionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of a flow
definition.</p></td>
</tr>
<tr class="even">
<td><code
id="augmentedairuntime_list_human_loops_:_SortOrder">SortOrder</code></td>
<td><p>Optional. The order for displaying results. Valid values:
<code>Ascending</code> and <code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="augmentedairuntime_list_human_loops_:_NextToken">NextToken</code></td>
<td><p>A token to display the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="augmentedairuntime_list_human_loops_:_MaxResults">MaxResults</code></td>
<td><p>The total number of items to return. If the total number of
available items is more than the value specified in
<code>MaxResults</code>, then a <code>NextToken</code> is returned in
the output. You can use this token to display the next page of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HumanLoopSummaries = list(
        list(
          HumanLoopName = "string",
          HumanLoopStatus = "InProgress"|"Failed"|"Completed"|"Stopped"|"Stopping",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          FailureReason = "string",
          FlowDefinitionArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_human_loops(
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      FlowDefinitionArn = "string",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123
    )
