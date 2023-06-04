<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_describe_problem_observations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the anomalies or errors associated with the problem

### Description

Describes the anomalies or errors associated with the problem.

### Usage

    applicationinsights_describe_problem_observations(ProblemId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_describe_problem_observations_:_ProblemId">ProblemId</code></td>
<td><p>[required] The ID of the problem.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RelatedObservations = list(
        ObservationList = list(
          list(
            Id = "string",
            StartTime = as.POSIXct(
              "2015-01-01"
            ),
            EndTime = as.POSIXct(
              "2015-01-01"
            ),
            SourceType = "string",
            SourceARN = "string",
            LogGroup = "string",
            LineTime = as.POSIXct(
              "2015-01-01"
            ),
            LogText = "string",
            LogFilter = "ERROR"|"WARN"|"INFO",
            MetricNamespace = "string",
            MetricName = "string",
            Unit = "string",
            Value = 123.0,
            CloudWatchEventId = "string",
            CloudWatchEventSource = "EC2"|"CODE_DEPLOY"|"HEALTH"|"RDS",
            CloudWatchEventDetailType = "string",
            HealthEventArn = "string",
            HealthService = "string",
            HealthEventTypeCode = "string",
            HealthEventTypeCategory = "string",
            HealthEventDescription = "string",
            CodeDeployDeploymentId = "string",
            CodeDeployDeploymentGroup = "string",
            CodeDeployState = "string",
            CodeDeployApplication = "string",
            CodeDeployInstanceGroupId = "string",
            Ec2State = "string",
            RdsEventCategories = "string",
            RdsEventMessage = "string",
            S3EventName = "string",
            StatesExecutionArn = "string",
            StatesArn = "string",
            StatesStatus = "string",
            StatesInput = "string",
            EbsEvent = "string",
            EbsResult = "string",
            EbsCause = "string",
            EbsRequestId = "string",
            XRayFaultPercent = 123,
            XRayThrottlePercent = 123,
            XRayErrorPercent = 123,
            XRayRequestCount = 123,
            XRayRequestAverageLatency = 123,
            XRayNodeName = "string",
            XRayNodeType = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_problem_observations(
      ProblemId = "string"
    )
