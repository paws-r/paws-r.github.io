<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_health_checks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve a list of the health checks that are associated with the current Amazon Web Services account

### Description

Retrieve a list of the health checks that are associated with the
current Amazon Web Services account.

### Usage

    route53_list_health_checks(Marker, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_list_health_checks_:_Marker">Marker</code></td>
<td><p>If the value of <code>IsTruncated</code> in the previous response
was <code>true</code>, you have more health checks. To get another
group, submit another <code>list_health_checks</code> request.</p>
<p>For the value of <code>marker</code>, specify the value of
<code>NextMarker</code> from the previous response, which is the ID of
the first health check that Amazon Route 53 will return if you submit
another request.</p>
<p>If the value of <code>IsTruncated</code> in the previous response was
<code>false</code>, there are no more health checks to get.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_health_checks_:_MaxItems">MaxItems</code></td>
<td><p>The maximum number of health checks that you want
<code>list_health_checks</code> to return in response to the current
request. Amazon Route 53 returns a maximum of 100 items. If you set
<code>MaxItems</code> to a value greater than 100, Route 53 returns only
the first 100 health checks.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HealthChecks = list(
        list(
          Id = "string",
          CallerReference = "string",
          LinkedService = list(
            ServicePrincipal = "string",
            Description = "string"
          ),
          HealthCheckConfig = list(
            IPAddress = "string",
            Port = 123,
            Type = "HTTP"|"HTTPS"|"HTTP_STR_MATCH"|"HTTPS_STR_MATCH"|"TCP"|"CALCULATED"|"CLOUDWATCH_METRIC"|"RECOVERY_CONTROL",
            ResourcePath = "string",
            FullyQualifiedDomainName = "string",
            SearchString = "string",
            RequestInterval = 123,
            FailureThreshold = 123,
            MeasureLatency = TRUE|FALSE,
            Inverted = TRUE|FALSE,
            Disabled = TRUE|FALSE,
            HealthThreshold = 123,
            ChildHealthChecks = list(
              "string"
            ),
            EnableSNI = TRUE|FALSE,
            Regions = list(
              "us-east-1"|"us-west-1"|"us-west-2"|"eu-west-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"sa-east-1"
            ),
            AlarmIdentifier = list(
              Region = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"ca-central-1"|"eu-central-1"|"eu-central-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"ap-east-1"|"me-south-1"|"me-central-1"|"ap-south-1"|"ap-south-2"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"cn-northwest-1"|"cn-north-1"|"af-south-1"|"eu-south-1"|"eu-south-2"|"us-gov-west-1"|"us-gov-east-1"|"us-iso-east-1"|"us-iso-west-1"|"us-isob-east-1"|"ap-southeast-4",
              Name = "string"
            ),
            InsufficientDataHealthStatus = "Healthy"|"Unhealthy"|"LastKnownStatus",
            RoutingControlArn = "string"
          ),
          HealthCheckVersion = 123,
          CloudWatchAlarmConfiguration = list(
            EvaluationPeriods = 123,
            Threshold = 123.0,
            ComparisonOperator = "GreaterThanOrEqualToThreshold"|"GreaterThanThreshold"|"LessThanThreshold"|"LessThanOrEqualToThreshold",
            Period = 123,
            MetricName = "string",
            Namespace = "string",
            Statistic = "Average"|"Sum"|"SampleCount"|"Maximum"|"Minimum",
            Dimensions = list(
              list(
                Name = "string",
                Value = "string"
              )
            )
          )
        )
      ),
      Marker = "string",
      IsTruncated = TRUE|FALSE,
      NextMarker = "string",
      MaxItems = "string"
    )

### Request syntax

    svc$list_health_checks(
      Marker = "string",
      MaxItems = "string"
    )
