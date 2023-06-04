<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_get_query_runtime_statistics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns query execution runtime statistics related to a single execution of a query if you have access to the workgroup in which the query ran

### Description

Returns query execution runtime statistics related to a single execution
of a query if you have access to the workgroup in which the query ran.
Query execution runtime statistics are returned only when
QueryExecutionStatus$State is in a SUCCEEDED or FAILED state.
Stage-level input and output row count and data size statistics are not
shown when a query has row-level filters defined in Lake Formation.

### Usage

    athena_get_query_runtime_statistics(QueryExecutionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="athena_get_query_runtime_statistics_:_QueryExecutionId">QueryExecutionId</code></td>
<td><p>[required] The unique ID of the query execution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryRuntimeStatistics = list(
        Timeline = list(
          QueryQueueTimeInMillis = 123,
          QueryPlanningTimeInMillis = 123,
          EngineExecutionTimeInMillis = 123,
          ServiceProcessingTimeInMillis = 123,
          TotalExecutionTimeInMillis = 123
        ),
        Rows = list(
          InputRows = 123,
          InputBytes = 123,
          OutputBytes = 123,
          OutputRows = 123
        ),
        OutputStage = list(
          StageId = 123,
          State = "string",
          OutputBytes = 123,
          OutputRows = 123,
          InputBytes = 123,
          InputRows = 123,
          ExecutionTime = 123,
          QueryStagePlan = list(
            Name = "string",
            Identifier = "string",
            Children = list(
              list()
            ),
            RemoteSources = list(
              "string"
            )
          ),
          SubStages = list(
            list()
          )
        )
      )
    )

### Request syntax

    svc$get_query_runtime_statistics(
      QueryExecutionId = "string"
    )
