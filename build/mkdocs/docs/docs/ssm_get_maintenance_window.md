<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_maintenance_window</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a maintenance window

### Description

Retrieves a maintenance window.

### Usage

    ssm_get_maintenance_window(WindowId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_maintenance_window_:_WindowId">WindowId</code></td>
<td><p>[required] The ID of the maintenance window for which you want to
retrieve information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowId = "string",
      Name = "string",
      Description = "string",
      StartDate = "string",
      EndDate = "string",
      Schedule = "string",
      ScheduleTimezone = "string",
      ScheduleOffset = 123,
      NextExecutionTime = "string",
      Duration = 123,
      Cutoff = 123,
      AllowUnassociatedTargets = TRUE|FALSE,
      Enabled = TRUE|FALSE,
      CreatedDate = as.POSIXct(
        "2015-01-01"
      ),
      ModifiedDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_maintenance_window(
      WindowId = "string"
    )
