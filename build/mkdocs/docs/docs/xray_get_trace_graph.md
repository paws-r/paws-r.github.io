<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_trace_graph</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a service graph for one or more specific trace IDs

### Description

Retrieves a service graph for one or more specific trace IDs.

### Usage

    xray_get_trace_graph(TraceIds, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_get_trace_graph_:_TraceIds">TraceIds</code></td>
<td><p>[required] Trace IDs of requests for which to generate a service
graph.</p></td>
</tr>
<tr class="even">
<td><code id="xray_get_trace_graph_:_NextToken">NextToken</code></td>
<td><p>Pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Services = list(
        list(
          ReferenceId = 123,
          Name = "string",
          Names = list(
            "string"
          ),
          Root = TRUE|FALSE,
          AccountId = "string",
          Type = "string",
          State = "string",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          Edges = list(
            list(
              ReferenceId = 123,
              StartTime = as.POSIXct(
                "2015-01-01"
              ),
              EndTime = as.POSIXct(
                "2015-01-01"
              ),
              SummaryStatistics = list(
                OkCount = 123,
                ErrorStatistics = list(
                  ThrottleCount = 123,
                  OtherCount = 123,
                  TotalCount = 123
                ),
                FaultStatistics = list(
                  OtherCount = 123,
                  TotalCount = 123
                ),
                TotalCount = 123,
                TotalResponseTime = 123.0
              ),
              ResponseTimeHistogram = list(
                list(
                  Value = 123.0,
                  Count = 123
                )
              ),
              Aliases = list(
                list(
                  Name = "string",
                  Names = list(
                    "string"
                  ),
                  Type = "string"
                )
              ),
              EdgeType = "string",
              ReceivedEventAgeHistogram = list(
                list(
                  Value = 123.0,
                  Count = 123
                )
              )
            )
          ),
          SummaryStatistics = list(
            OkCount = 123,
            ErrorStatistics = list(
              ThrottleCount = 123,
              OtherCount = 123,
              TotalCount = 123
            ),
            FaultStatistics = list(
              OtherCount = 123,
              TotalCount = 123
            ),
            TotalCount = 123,
            TotalResponseTime = 123.0
          ),
          DurationHistogram = list(
            list(
              Value = 123.0,
              Count = 123
            )
          ),
          ResponseTimeHistogram = list(
            list(
              Value = 123.0,
              Count = 123
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_trace_graph(
      TraceIds = list(
        "string"
      ),
      NextToken = "string"
    )
