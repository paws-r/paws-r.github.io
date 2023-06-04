<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_get_query_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves statistics on the planning and execution of a query

### Description

Retrieves statistics on the planning and execution of a query.

### Usage

    lakeformation_get_query_statistics(QueryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_get_query_statistics_:_QueryId">QueryId</code></td>
<td><p>[required] The ID of the plan query operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExecutionStatistics = list(
        AverageExecutionTimeMillis = 123,
        DataScannedBytes = 123,
        WorkUnitsExecutedCount = 123
      ),
      PlanningStatistics = list(
        EstimatedDataToScanBytes = 123,
        PlanningTimeMillis = 123,
        QueueTimeMillis = 123,
        WorkUnitsGeneratedCount = 123
      ),
      QuerySubmissionTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_query_statistics(
      QueryId = "string"
    )
