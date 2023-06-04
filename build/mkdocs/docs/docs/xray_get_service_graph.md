<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_service_graph</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result

### Description

Retrieves a document that describes services that process incoming
requests, and downstream services that they call as a result. Root
services process incoming requests and make calls to downstream
services. Root services are applications that use the [Amazon Web
Services X-Ray SDK](https://docs.aws.amazon.com/xray/index.html).
Downstream services can be other applications, Amazon Web Services
resources, HTTP web APIs, or SQL databases.

### Usage

    xray_get_service_graph(StartTime, EndTime, GroupName, GroupARN,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_get_service_graph_:_StartTime">StartTime</code></td>
<td><p>[required] The start of the time frame for which to generate a
graph.</p></td>
</tr>
<tr class="even">
<td><code id="xray_get_service_graph_:_EndTime">EndTime</code></td>
<td><p>[required] The end of the timeframe for which to generate a
graph.</p></td>
</tr>
<tr class="odd">
<td><code id="xray_get_service_graph_:_GroupName">GroupName</code></td>
<td><p>The name of a group based on which you want to generate a
graph.</p></td>
</tr>
<tr class="even">
<td><code id="xray_get_service_graph_:_GroupARN">GroupARN</code></td>
<td><p>The Amazon Resource Name (ARN) of a group based on which you want
to generate a graph.</p></td>
</tr>
<tr class="odd">
<td><code id="xray_get_service_graph_:_NextToken">NextToken</code></td>
<td><p>Pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
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
      ContainsOldGroupVersions = TRUE|FALSE,
      NextToken = "string"
    )

### Request syntax

    svc$get_service_graph(
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      GroupName = "string",
      GroupARN = "string",
      NextToken = "string"
    )
