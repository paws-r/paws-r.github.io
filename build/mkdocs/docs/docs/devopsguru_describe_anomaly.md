<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_describe_anomaly</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about an anomaly that you specify using its ID

### Description

Returns details about an anomaly that you specify using its ID.

### Usage

    devopsguru_describe_anomaly(Id, AccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="devopsguru_describe_anomaly_:_Id">Id</code></td>
<td><p>[required] The ID of the anomaly.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_describe_anomaly_:_AccountId">AccountId</code></td>
<td><p>The ID of the member account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProactiveAnomaly = list(
        Id = "string",
        Severity = "LOW"|"MEDIUM"|"HIGH",
        Status = "ONGOING"|"CLOSED",
        UpdateTime = as.POSIXct(
          "2015-01-01"
        ),
        AnomalyTimeRange = list(
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        AnomalyReportedTimeRange = list(
          OpenTime = as.POSIXct(
            "2015-01-01"
          ),
          CloseTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        PredictionTimeRange = list(
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        SourceDetails = list(
          CloudWatchMetrics = list(
            list(
              MetricName = "string",
              Namespace = "string",
              Dimensions = list(
                list(
                  Name = "string",
                  Value = "string"
                )
              ),
              Stat = "Sum"|"Average"|"SampleCount"|"Minimum"|"Maximum"|"p99"|"p90"|"p50",
              Unit = "string",
              Period = 123,
              MetricDataSummary = list(
                TimestampMetricValuePairList = list(
                  list(
                    Timestamp = as.POSIXct(
                      "2015-01-01"
                    ),
                    MetricValue = 123.0
                  )
                ),
                StatusCode = "Complete"|"InternalError"|"PartialData"
              )
            )
          ),
          PerformanceInsightsMetrics = list(
            list(
              MetricDisplayName = "string",
              Unit = "string",
              MetricQuery = list(
                Metric = "string",
                GroupBy = list(
                  Group = "string",
                  Dimensions = list(
                    "string"
                  ),
                  Limit = 123
                ),
                Filter = list(
                  "string"
                )
              ),
              ReferenceData = list(
                list(
                  Name = "string",
                  ComparisonValues = list(
                    ReferenceScalar = list(
                      Value = 123.0
                    ),
                    ReferenceMetric = list(
                      MetricQuery = list(
                        Metric = "string",
                        GroupBy = list(
                          Group = "string",
                          Dimensions = list(
                            "string"
                          ),
                          Limit = 123
                        ),
                        Filter = list(
                          "string"
                        )
                      )
                    )
                  )
                )
              ),
              StatsAtAnomaly = list(
                list(
                  Type = "string",
                  Value = 123.0
                )
              ),
              StatsAtBaseline = list(
                list(
                  Type = "string",
                  Value = 123.0
                )
              )
            )
          )
        ),
        AssociatedInsightId = "string",
        ResourceCollection = list(
          CloudFormation = list(
            StackNames = list(
              "string"
            )
          ),
          Tags = list(
            list(
              AppBoundaryKey = "string",
              TagValues = list(
                "string"
              )
            )
          )
        ),
        Limit = 123.0,
        SourceMetadata = list(
          Source = "string",
          SourceResourceName = "string",
          SourceResourceType = "string"
        ),
        AnomalyResources = list(
          list(
            Name = "string",
            Type = "string"
          )
        ),
        Description = "string"
      ),
      ReactiveAnomaly = list(
        Id = "string",
        Severity = "LOW"|"MEDIUM"|"HIGH",
        Status = "ONGOING"|"CLOSED",
        AnomalyTimeRange = list(
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        AnomalyReportedTimeRange = list(
          OpenTime = as.POSIXct(
            "2015-01-01"
          ),
          CloseTime = as.POSIXct(
            "2015-01-01"
          )
        ),
        SourceDetails = list(
          CloudWatchMetrics = list(
            list(
              MetricName = "string",
              Namespace = "string",
              Dimensions = list(
                list(
                  Name = "string",
                  Value = "string"
                )
              ),
              Stat = "Sum"|"Average"|"SampleCount"|"Minimum"|"Maximum"|"p99"|"p90"|"p50",
              Unit = "string",
              Period = 123,
              MetricDataSummary = list(
                TimestampMetricValuePairList = list(
                  list(
                    Timestamp = as.POSIXct(
                      "2015-01-01"
                    ),
                    MetricValue = 123.0
                  )
                ),
                StatusCode = "Complete"|"InternalError"|"PartialData"
              )
            )
          ),
          PerformanceInsightsMetrics = list(
            list(
              MetricDisplayName = "string",
              Unit = "string",
              MetricQuery = list(
                Metric = "string",
                GroupBy = list(
                  Group = "string",
                  Dimensions = list(
                    "string"
                  ),
                  Limit = 123
                ),
                Filter = list(
                  "string"
                )
              ),
              ReferenceData = list(
                list(
                  Name = "string",
                  ComparisonValues = list(
                    ReferenceScalar = list(
                      Value = 123.0
                    ),
                    ReferenceMetric = list(
                      MetricQuery = list(
                        Metric = "string",
                        GroupBy = list(
                          Group = "string",
                          Dimensions = list(
                            "string"
                          ),
                          Limit = 123
                        ),
                        Filter = list(
                          "string"
                        )
                      )
                    )
                  )
                )
              ),
              StatsAtAnomaly = list(
                list(
                  Type = "string",
                  Value = 123.0
                )
              ),
              StatsAtBaseline = list(
                list(
                  Type = "string",
                  Value = 123.0
                )
              )
            )
          )
        ),
        AssociatedInsightId = "string",
        ResourceCollection = list(
          CloudFormation = list(
            StackNames = list(
              "string"
            )
          ),
          Tags = list(
            list(
              AppBoundaryKey = "string",
              TagValues = list(
                "string"
              )
            )
          )
        ),
        Type = "CAUSAL"|"CONTEXTUAL",
        Name = "string",
        Description = "string",
        CausalAnomalyId = "string",
        AnomalyResources = list(
          list(
            Name = "string",
            Type = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_anomaly(
      Id = "string",
      AccountId = "string"
    )
