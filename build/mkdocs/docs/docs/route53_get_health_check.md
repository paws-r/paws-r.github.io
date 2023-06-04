<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_health_check</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a specified health check

### Description

Gets information about a specified health check.

### Usage

    route53_get_health_check(HealthCheckId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_get_health_check_:_HealthCheckId">HealthCheckId</code></td>
<td><p>[required] The identifier that Amazon Route 53 assigned to the
health check when you created it. When you add or update a resource
record set, you use this value to specify which health check to use. The
value can be up to 64 characters long.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HealthCheck = list(
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
    )

### Request syntax

    svc$get_health_check(
      HealthCheckId = "string"
    )
