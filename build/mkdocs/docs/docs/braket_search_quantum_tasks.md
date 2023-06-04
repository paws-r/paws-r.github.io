<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_search_quantum_tasks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for tasks that match the specified filter values

### Description

Searches for tasks that match the specified filter values.

### Usage

    braket_search_quantum_tasks(filters, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="braket_search_quantum_tasks_:_filters">filters</code></td>
<td><p>[required] Array of <code>SearchQuantumTasksFilter</code>
objects.</p></td>
</tr>
<tr class="even">
<td><code
id="braket_search_quantum_tasks_:_maxResults">maxResults</code></td>
<td><p>Maximum number of results to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="braket_search_quantum_tasks_:_nextToken">nextToken</code></td>
<td><p>A token used for pagination of results returned in the response.
Use the token returned from the previous request continue results where
the previous request ended.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      quantumTasks = list(
        list(
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          deviceArn = "string",
          endedAt = as.POSIXct(
            "2015-01-01"
          ),
          outputS3Bucket = "string",
          outputS3Directory = "string",
          quantumTaskArn = "string",
          shots = 123,
          status = "CREATED"|"QUEUED"|"RUNNING"|"COMPLETED"|"FAILED"|"CANCELLING"|"CANCELLED",
          tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$search_quantum_tasks(
      filters = list(
        list(
          name = "string",
          operator = "LT"|"LTE"|"EQUAL"|"GT"|"GTE"|"BETWEEN",
          values = list(
            "string"
          )
        )
      ),
      maxResults = 123,
      nextToken = "string"
    )
