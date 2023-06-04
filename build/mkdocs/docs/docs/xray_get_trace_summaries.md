<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_get_trace_summaries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves IDs and annotations for traces available for a specified time frame using an optional filter

### Description

Retrieves IDs and annotations for traces available for a specified time
frame using an optional filter. To get the full traces, pass the trace
IDs to `batch_get_traces`.

A filter expression can target traced requests that hit specific service
nodes or edges, have errors, or come from a known user. For example, the
following filter expression targets traces that pass through
`api.example.com`:

`service("api.example.com")`

This filter expression finds traces that have an annotation named
`account` with the value `12345`:

`annotation.account = "12345"`

For a full list of indexed fields and keywords that you can use in
filter expressions, see [Using Filter
Expressions](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html)
in the *Amazon Web Services X-Ray Developer Guide*.

### Usage

    xray_get_trace_summaries(StartTime, EndTime, TimeRangeType, Sampling,
      SamplingStrategy, FilterExpression, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="xray_get_trace_summaries_:_StartTime">StartTime</code></td>
<td><p>[required] The start of the time frame for which to retrieve
traces.</p></td>
</tr>
<tr class="even">
<td><code id="xray_get_trace_summaries_:_EndTime">EndTime</code></td>
<td><p>[required] The end of the time frame for which to retrieve
traces.</p></td>
</tr>
<tr class="odd">
<td><code
id="xray_get_trace_summaries_:_TimeRangeType">TimeRangeType</code></td>
<td><p>A parameter to indicate whether to query trace summaries by
TraceId or Event time.</p></td>
</tr>
<tr class="even">
<td><code id="xray_get_trace_summaries_:_Sampling">Sampling</code></td>
<td><p>Set to <code>true</code> to get summaries for only a subset of
available traces.</p></td>
</tr>
<tr class="odd">
<td><code
id="xray_get_trace_summaries_:_SamplingStrategy">SamplingStrategy</code></td>
<td><p>A parameter to indicate whether to enable sampling on trace
summaries. Input parameters are Name and Value.</p></td>
</tr>
<tr class="even">
<td><code
id="xray_get_trace_summaries_:_FilterExpression">FilterExpression</code></td>
<td><p>Specify a filter expression to retrieve trace summaries for
services or requests that meet certain requirements.</p></td>
</tr>
<tr class="odd">
<td><code
id="xray_get_trace_summaries_:_NextToken">NextToken</code></td>
<td><p>Specify the pagination token returned by a previous request to
retrieve the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TraceSummaries = list(
        list(
          Id = "string",
          Duration = 123.0,
          ResponseTime = 123.0,
          HasFault = TRUE|FALSE,
          HasError = TRUE|FALSE,
          HasThrottle = TRUE|FALSE,
          IsPartial = TRUE|FALSE,
          Http = list(
            HttpURL = "string",
            HttpStatus = 123,
            HttpMethod = "string",
            UserAgent = "string",
            ClientIp = "string"
          ),
          Annotations = list(
            list(
              list(
                AnnotationValue = list(
                  NumberValue = 123.0,
                  BooleanValue = TRUE|FALSE,
                  StringValue = "string"
                ),
                ServiceIds = list(
                  list(
                    Name = "string",
                    Names = list(
                      "string"
                    ),
                    AccountId = "string",
                    Type = "string"
                  )
                )
              )
            )
          ),
          Users = list(
            list(
              UserName = "string",
              ServiceIds = list(
                list(
                  Name = "string",
                  Names = list(
                    "string"
                  ),
                  AccountId = "string",
                  Type = "string"
                )
              )
            )
          ),
          ServiceIds = list(
            list(
              Name = "string",
              Names = list(
                "string"
              ),
              AccountId = "string",
              Type = "string"
            )
          ),
          ResourceARNs = list(
            list(
              ARN = "string"
            )
          ),
          InstanceIds = list(
            list(
              Id = "string"
            )
          ),
          AvailabilityZones = list(
            list(
              Name = "string"
            )
          ),
          EntryPoint = list(
            Name = "string",
            Names = list(
              "string"
            ),
            AccountId = "string",
            Type = "string"
          ),
          FaultRootCauses = list(
            list(
              Services = list(
                list(
                  Name = "string",
                  Names = list(
                    "string"
                  ),
                  Type = "string",
                  AccountId = "string",
                  EntityPath = list(
                    list(
                      Name = "string",
                      Exceptions = list(
                        list(
                          Name = "string",
                          Message = "string"
                        )
                      ),
                      Remote = TRUE|FALSE
                    )
                  ),
                  Inferred = TRUE|FALSE
                )
              ),
              ClientImpacting = TRUE|FALSE
            )
          ),
          ErrorRootCauses = list(
            list(
              Services = list(
                list(
                  Name = "string",
                  Names = list(
                    "string"
                  ),
                  Type = "string",
                  AccountId = "string",
                  EntityPath = list(
                    list(
                      Name = "string",
                      Exceptions = list(
                        list(
                          Name = "string",
                          Message = "string"
                        )
                      ),
                      Remote = TRUE|FALSE
                    )
                  ),
                  Inferred = TRUE|FALSE
                )
              ),
              ClientImpacting = TRUE|FALSE
            )
          ),
          ResponseTimeRootCauses = list(
            list(
              Services = list(
                list(
                  Name = "string",
                  Names = list(
                    "string"
                  ),
                  Type = "string",
                  AccountId = "string",
                  EntityPath = list(
                    list(
                      Name = "string",
                      Coverage = 123.0,
                      Remote = TRUE|FALSE
                    )
                  ),
                  Inferred = TRUE|FALSE
                )
              ),
              ClientImpacting = TRUE|FALSE
            )
          ),
          Revision = 123,
          MatchedEventTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      ApproximateTime = as.POSIXct(
        "2015-01-01"
      ),
      TracesProcessedCount = 123,
      NextToken = "string"
    )

### Request syntax

    svc$get_trace_summaries(
      StartTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      TimeRangeType = "TraceId"|"Event",
      Sampling = TRUE|FALSE,
      SamplingStrategy = list(
        Name = "PartialScan"|"FixedRate",
        Value = 123.0
      ),
      FilterExpression = "string",
      NextToken = "string"
    )
