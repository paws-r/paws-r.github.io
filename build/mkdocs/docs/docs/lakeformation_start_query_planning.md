<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_start_query_planning</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Submits a request to process a query statement

### Description

Submits a request to process a query statement.

This operation generates work units that can be retrieved with the
`get_work_units` operation as soon as the query state is
WORKUNITS\_AVAILABLE or FINISHED.

### Usage

    lakeformation_start_query_planning(QueryPlanningContext, QueryString)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_start_query_planning_:_QueryPlanningContext">QueryPlanningContext</code></td>
<td><p>[required] A structure containing information about the query
plan.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_start_query_planning_:_QueryString">QueryString</code></td>
<td><p>[required] A PartiQL query statement used as an input to the
planner service.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QueryId = "string"
    )

### Request syntax

    svc$start_query_planning(
      QueryPlanningContext = list(
        CatalogId = "string",
        DatabaseName = "string",
        QueryAsOfTime = as.POSIXct(
          "2015-01-01"
        ),
        QueryParameters = list(
          "string"
        ),
        TransactionId = "string"
      ),
      QueryString = "string"
    )
