<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_get_query_state</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the state of a query previously submitted

### Description

Returns the state of a query previously submitted. Clients are expected
to poll `get_query_state` to monitor the current state of the planning
before retrieving the work units. A query state is only visible to the
principal that made the initial call to `start_query_planning`.

### Usage

    lakeformation_get_query_state(QueryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_get_query_state_:_QueryId">QueryId</code></td>
<td><p>[required] The ID of the plan query operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Error = "string",
      State = "PENDING"|"WORKUNITS_AVAILABLE"|"ERROR"|"FINISHED"|"EXPIRED"
    )

### Request syntax

    svc$get_query_state(
      QueryId = "string"
    )
