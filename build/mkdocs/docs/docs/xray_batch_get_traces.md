<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_batch_get_traces</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of traces specified by ID

### Description

Retrieves a list of traces specified by ID. Each trace is a collection
of segment documents that originates from a single request. Use
`get_trace_summaries` to get a list of trace IDs.

### Usage

    xray_batch_get_traces(TraceIds, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_batch_get_traces_:_TraceIds">TraceIds</code></td>
<td><p>[required] Specify the trace IDs of requests for which to
retrieve segments.</p></td>
</tr>
<tr class="even">
<td><code id="xray_batch_get_traces_:_NextToken">NextToken</code></td>
<td><p>Pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Traces = list(
        list(
          Id = "string",
          Duration = 123.0,
          LimitExceeded = TRUE|FALSE,
          Segments = list(
            list(
              Id = "string",
              Document = "string"
            )
          )
        )
      ),
      UnprocessedTraceIds = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$batch_get_traces(
      TraceIds = list(
        "string"
      ),
      NextToken = "string"
    )
