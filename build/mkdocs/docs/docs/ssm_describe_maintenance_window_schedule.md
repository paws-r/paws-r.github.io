<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_maintenance_window_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about upcoming executions of a maintenance window

### Description

Retrieves information about upcoming executions of a maintenance window.

### Usage

    ssm_describe_maintenance_window_schedule(WindowId, Targets,
      ResourceType, Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_schedule_:_WindowId">WindowId</code></td>
<td><p>The ID of the maintenance window to retrieve information
about.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_schedule_:_Targets">Targets</code></td>
<td><p>The managed node ID or key-value pair to retrieve information
about.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_schedule_:_ResourceType">ResourceType</code></td>
<td><p>The type of resource you want to retrieve information about. For
example, <code>INSTANCE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_schedule_:_Filters">Filters</code></td>
<td><p>Filters used to limit the range of results. For example, you can
limit maintenance window executions to only those scheduled before or
after a certain date and time.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_window_schedule_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_window_schedule_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ScheduledWindowExecutions = list(
        list(
          WindowId = "string",
          Name = "string",
          ExecutionTime = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_maintenance_window_schedule(
      WindowId = "string",
      Targets = list(
        list(
          Key = "string",
          Values = list(
            "string"
          )
        )
      ),
      ResourceType = "INSTANCE"|"RESOURCE_GROUP",
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
