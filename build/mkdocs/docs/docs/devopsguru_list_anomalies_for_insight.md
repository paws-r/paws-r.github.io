<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_list_anomalies_for_insight</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the anomalies that belong to an insight that you specify using its ID

### Description

Returns a list of the anomalies that belong to an insight that you
specify using its ID.

### Usage

    devopsguru_list_anomalies_for_insight(InsightId, StartTimeRange,
      MaxResults, NextToken, AccountId, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_list_anomalies_for_insight_:_InsightId">InsightId</code></td>
<td><p>[required] The ID of the insight. The returned anomalies belong
to this insight.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_list_anomalies_for_insight_:_StartTimeRange">StartTimeRange</code></td>
<td><p>A time range used to specify when the requested anomalies
started. All returned anomalies started during this time range.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_list_anomalies_for_insight_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_list_anomalies_for_insight_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_list_anomalies_for_insight_:_AccountId">AccountId</code></td>
<td><p>The ID of the Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_list_anomalies_for_insight_:_Filters">Filters</code></td>
<td><p>Specifies one or more service names that are used to list
anomalies.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProactiveAnomalies = list(
        list(
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
        )
      ),
      ReactiveAnomalies = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_anomalies_for_insight(
      InsightId = "string",
      StartTimeRange = list(
        FromTime = as.POSIXct(
          "2015-01-01"
        ),
        ToTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      AccountId = "string",
      Filters = list(
        ServiceCollection = list(
          ServiceNames = list(
            "API_GATEWAY"|"APPLICATION_ELB"|"AUTO_SCALING_GROUP"|"CLOUD_FRONT"|"DYNAMO_DB"|"EC2"|"ECS"|"EKS"|"ELASTIC_BEANSTALK"|"ELASTI_CACHE"|"ELB"|"ES"|"KINESIS"|"LAMBDA"|"NAT_GATEWAY"|"NETWORK_ELB"|"RDS"|"REDSHIFT"|"ROUTE_53"|"S3"|"SAGE_MAKER"|"SNS"|"SQS"|"STEP_FUNCTIONS"|"SWF"
          )
        )
      )
    )
