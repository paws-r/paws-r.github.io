<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_create_health_check</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new health check

### Description

Creates a new health check.

For information about adding health checks to resource record sets, see
[HealthCheckId](https://docs.aws.amazon.com/Route53/latest/APIReference/API_ResourceRecordSet.html#Route53-Type-ResourceRecordSet-HealthCheckId)
in `change_resource_record_sets`.

**ELB Load Balancers**

If you're registering EC2 instances with an Elastic Load Balancing (ELB)
load balancer, do not create Amazon Route 53 health checks for the EC2
instances. When you register an EC2 instance with a load balancer, you
configure settings for an ELB health check, which performs a similar
function to a Route 53 health check.

**Private Hosted Zones**

You can associate health checks with failover resource record sets in a
private hosted zone. Note the following:

-   Route 53 health checkers are outside the VPC. To check the health of
    an endpoint within a VPC by IP address, you must assign a public IP
    address to the instance in the VPC.

-   You can configure a health checker to check the health of an
    external resource that the instance relies on, such as a database
    server.

-   You can create a CloudWatch metric, associate an alarm with the
    metric, and then create a health check that is based on the state of
    the alarm. For example, you might create a CloudWatch metric that
    checks the status of the Amazon EC2 `StatusCheckFailed` metric, add
    an alarm to the metric, and then create a health check that is based
    on the state of the alarm. For information about creating CloudWatch
    metrics and alarms by using the CloudWatch console, see the [Amazon
    CloudWatch User
    Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html).

### Usage

    route53_create_health_check(CallerReference, HealthCheckConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_create_health_check_:_CallerReference">CallerReference</code></td>
<td><p>[required] A unique string that identifies the request and that
allows you to retry a failed <code>create_health_check</code> request
without the risk of creating two identical health checks:</p>
<ul>
<li><p>If you send a <code>create_health_check</code> request with the
same <code>CallerReference</code> and settings as a previous request,
and if the health check doesn't exist, Amazon Route 53 creates the
health check. If the health check does exist, Route 53 returns the
settings for the existing health check.</p></li>
<li><p>If you send a <code>create_health_check</code> request with the
same <code>CallerReference</code> as a deleted health check, regardless
of the settings, Route 53 returns a
<code>HealthCheckAlreadyExists</code> error.</p></li>
<li><p>If you send a <code>create_health_check</code> request with the
same <code>CallerReference</code> as an existing health check but with
different settings, Route 53 returns a
<code>HealthCheckAlreadyExists</code> error.</p></li>
<li><p>If you send a <code>create_health_check</code> request with a
unique <code>CallerReference</code> but settings identical to an
existing health check, Route 53 creates the health check.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53_create_health_check_:_HealthCheckConfig">HealthCheckConfig</code></td>
<td><p>[required] A complex type that contains settings for a new health
check.</p></td>
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
      ),
      Location = "string"
    )

### Request syntax

    svc$create_health_check(
      CallerReference = "string",
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
      )
    )
