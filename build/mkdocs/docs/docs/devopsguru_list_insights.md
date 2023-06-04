<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_list_insights</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of insights in your Amazon Web Services account

### Description

Returns a list of insights in your Amazon Web Services account. You can
specify which insights are returned by their start time and status
(`ONGOING`, `CLOSED`, or `ANY`).

### Usage

    devopsguru_list_insights(StatusFilter, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_list_insights_:_StatusFilter">StatusFilter</code></td>
<td><p>[required] A filter used to filter the returned insights by their
status. You can specify one status filter.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_list_insights_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_list_insights_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProactiveInsights = list(
        list(
          Id = "string",
          Name = "string",
          Severity = "LOW"|"MEDIUM"|"HIGH",
          Status = "ONGOING"|"CLOSED",
          InsightTimeRange = list(
            StartTime = as.POSIXct(
              "2015-01-01"
            ),
            EndTime = as.POSIXct(
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
          ServiceCollection = list(
            ServiceNames = list(
              "API_GATEWAY"|"APPLICATION_ELB"|"AUTO_SCALING_GROUP"|"CLOUD_FRONT"|"DYNAMO_DB"|"EC2"|"ECS"|"EKS"|"ELASTIC_BEANSTALK"|"ELASTI_CACHE"|"ELB"|"ES"|"KINESIS"|"LAMBDA"|"NAT_GATEWAY"|"NETWORK_ELB"|"RDS"|"REDSHIFT"|"ROUTE_53"|"S3"|"SAGE_MAKER"|"SNS"|"SQS"|"STEP_FUNCTIONS"|"SWF"
            )
          ),
          AssociatedResourceArns = list(
            "string"
          )
        )
      ),
      ReactiveInsights = list(
        list(
          Id = "string",
          Name = "string",
          Severity = "LOW"|"MEDIUM"|"HIGH",
          Status = "ONGOING"|"CLOSED",
          InsightTimeRange = list(
            StartTime = as.POSIXct(
              "2015-01-01"
            ),
            EndTime = as.POSIXct(
              "2015-01-01"
            )
          ),
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
          ServiceCollection = list(
            ServiceNames = list(
              "API_GATEWAY"|"APPLICATION_ELB"|"AUTO_SCALING_GROUP"|"CLOUD_FRONT"|"DYNAMO_DB"|"EC2"|"ECS"|"EKS"|"ELASTIC_BEANSTALK"|"ELASTI_CACHE"|"ELB"|"ES"|"KINESIS"|"LAMBDA"|"NAT_GATEWAY"|"NETWORK_ELB"|"RDS"|"REDSHIFT"|"ROUTE_53"|"S3"|"SAGE_MAKER"|"SNS"|"SQS"|"STEP_FUNCTIONS"|"SWF"
            )
          ),
          AssociatedResourceArns = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_insights(
      StatusFilter = list(
        Ongoing = list(
          Type = "REACTIVE"|"PROACTIVE"
        ),
        Closed = list(
          Type = "REACTIVE"|"PROACTIVE",
          EndTimeRange = list(
            FromTime = as.POSIXct(
              "2015-01-01"
            ),
            ToTime = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        Any = list(
          Type = "REACTIVE"|"PROACTIVE",
          StartTimeRange = list(
            FromTime = as.POSIXct(
              "2015-01-01"
            ),
            ToTime = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
