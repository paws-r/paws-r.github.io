<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_maintenance_windows</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the maintenance windows in an Amazon Web Services account

### Description

Retrieves the maintenance windows in an Amazon Web Services account.

### Usage

    ssm_describe_maintenance_windows(Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_windows_:_Filters">Filters</code></td>
<td><p>Optional filters used to narrow down the scope of the returned
maintenance windows. Supported filter keys are <code>Name</code> and
<code>Enabled</code>. For example, <code>Name=MyMaintenanceWindow</code>
and <code>Enabled=True</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_maintenance_windows_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_maintenance_windows_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      WindowIdentities = list(
        list(
          WindowId = "string",
          Name = "string",
          Description = "string",
          Enabled = TRUE|FALSE,
          Duration = 123,
          Cutoff = 123,
          Schedule = "string",
          ScheduleTimezone = "string",
          ScheduleOffset = 123,
          EndDate = "string",
          StartDate = "string",
          NextExecutionTime = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_maintenance_windows(
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
