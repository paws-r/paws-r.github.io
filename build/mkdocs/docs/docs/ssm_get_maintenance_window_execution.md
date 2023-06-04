<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_maintenance_window_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves details about a specific a maintenance window execution

### Description

Retrieves details about a specific a maintenance window execution.

### Usage

    ssm_get_maintenance_window_execution(WindowExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_maintenance_window_execution_:_WindowExecutionId">WindowExecutionId</code></td>
<td><p>[required] The ID of the maintenance window execution that
includes the task.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowExecutionId = "string",
      TaskIds = list(
        "string"
      ),
      Status = "PENDING"|"IN_PROGRESS"|"SUCCESS"|"FAILED"|"TIMED_OUT"|"CANCELLING"|"CANCELLED"|"SKIPPED_OVERLAPPING",
      StatusDetails = "string",
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_maintenance_window_execution(
      WindowExecutionId = "string"
    )
