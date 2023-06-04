<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_update_health_check</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing health check

### Description

Updates an existing health check. Note that some values can't be
updated.

For more information about updating health checks, see [Creating,
Updating, and Deleting Health
Checks](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html)
in the *Amazon Route 53 Developer Guide*.

### Usage

    route53_update_health_check(HealthCheckId, HealthCheckVersion,
      IPAddress, Port, ResourcePath, FullyQualifiedDomainName, SearchString,
      FailureThreshold, Inverted, Disabled, HealthThreshold,
      ChildHealthChecks, EnableSNI, Regions, AlarmIdentifier,
      InsufficientDataHealthStatus, ResetElements)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_update_health_check_:_HealthCheckId">HealthCheckId</code></td>
<td><p>[required] The ID for the health check for which you want
detailed information. When you created the health check,
<code>create_health_check</code> returned the ID in the response, in the
<code>HealthCheckId</code> element.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_update_health_check_:_HealthCheckVersion">HealthCheckVersion</code></td>
<td><p>A sequential counter that Amazon Route 53 sets to <code>1</code>
when you create a health check and increments by 1 each time you update
settings for the health check.</p>
<p>We recommend that you use <code>get_health_check</code> or
<code>list_health_checks</code> to get the current value of
<code>HealthCheckVersion</code> for the health check that you want to
update, and that you include that value in your
<code>update_health_check</code> request. This prevents Route 53 from
overwriting an intervening update:</p>
<ul>
<li><p>If the value in the <code>update_health_check</code> request
matches the value of <code>HealthCheckVersion</code> in the health
check, Route 53 updates the health check with the new settings.</p></li>
<li><p>If the value of <code>HealthCheckVersion</code> in the health
check is greater, the health check was changed after you got the version
number. Route 53 does not update the health check, and it returns a
<code>HealthCheckVersionMismatch</code> error.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="route53_update_health_check_:_IPAddress">IPAddress</code></td>
<td><p>The IPv4 or IPv6 IP address for the endpoint that you want Amazon
Route 53 to perform health checks on. If you don't specify a value for
<code>IPAddress</code>, Route 53 sends a DNS request to resolve the
domain name that you specify in <code>FullyQualifiedDomainName</code> at
the interval that you specify in <code>RequestInterval</code>. Using an
IP address that is returned by DNS, Route 53 then checks the health of
the endpoint.</p>
<p>Use one of the following formats for the value of
<code>IPAddress</code>:</p>
<ul>
<li><p><strong>IPv4 address</strong>: four values between 0 and 255,
separated by periods (.), for example, <code
style="white-space: pre;">⁠192.0.2.44⁠</code>.</p></li>
<li><p><strong>IPv6 address</strong>: eight groups of four hexadecimal
values, separated by colons (:), for example, <code
style="white-space: pre;">⁠2001:0db8:85a3:0000:0000:abcd:0001:2345⁠</code>.
You can also shorten IPv6 addresses as described in RFC 5952, for
example, <code
style="white-space: pre;">⁠2001:db8:85a3::abcd:1:2345⁠</code>.</p></li>
</ul>
<p>If the endpoint is an EC2 instance, we recommend that you create an
Elastic IP address, associate it with your EC2 instance, and specify the
Elastic IP address for <code>IPAddress</code>. This ensures that the IP
address of your instance never changes. For more information, see the
applicable documentation:</p>
<ul>
<li><p>Linux: <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic
IP Addresses (EIP)</a> in the <em>Amazon EC2 User Guide for Linux
Instances</em></p></li>
<li><p>Windows: <a
href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-ip-addresses-eip.html">Elastic
IP Addresses (EIP)</a> in the <em>Amazon EC2 User Guide for Windows
Instances</em></p></li>
</ul>
<p>If a health check already has a value for <code>IPAddress</code>, you
can change the value. However, you can't update an existing health check
to add or remove the value of <code>IPAddress</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-FullyQualifiedDomainName">FullyQualifiedDomainName</a>.</p>
<p>Constraints: Route 53 can't check the health of endpoints for which
the IP address is in local, private, non-routable, or multicast ranges.
For more information about IP addresses for which you can't create
health checks, see the following documents:</p>
<ul>
<li><p><a href="https://datatracker.ietf.org/doc/html/rfc5735">RFC 5735,
Special Use IPv4 Addresses</a></p></li>
<li><p><a href="https://datatracker.ietf.org/doc/html/rfc6598">RFC 6598,
IANA-Reserved IPv4 Prefix for Shared Address Space</a></p></li>
<li><p><a href="https://datatracker.ietf.org/doc/html/rfc5156">RFC 5156,
Special-Use IPv6 Addresses</a></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="route53_update_health_check_:_Port">Port</code></td>
<td><p>The port on the endpoint that you want Amazon Route 53 to perform
health checks on.</p>
<p>Don't specify a value for <code>Port</code> when you specify a value
for <code>Type</code> of <code>CLOUDWATCH_METRIC</code> or
<code>CALCULATED</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_update_health_check_:_ResourcePath">ResourcePath</code></td>
<td><p>The path that you want Amazon Route 53 to request when performing
health checks. The path can be any value for which your endpoint will
return an HTTP status code of 2xx or 3xx when the endpoint is healthy,
for example the file /docs/route53-health-check.html. You can also
include query string parameters, for example, <code
style="white-space: pre;">⁠/welcome.html?language=jp&amp;login=y⁠</code>.</p>
<p>Specify this value only if you want to change it.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_update_health_check_:_FullyQualifiedDomainName">FullyQualifiedDomainName</code></td>
<td><p>Amazon Route 53 behavior depends on whether you specify a value
for <code>IPAddress</code>.</p>
<p>If a health check already has a value for <code>IPAddress</code>, you
can change the value. However, you can't update an existing health check
to add or remove the value of <code>IPAddress</code>.</p>
<p><strong>If you specify a value for</strong>
<code>IPAddress</code>:</p>
<p>Route 53 sends health check requests to the specified IPv4 or IPv6
address and passes the value of <code>FullyQualifiedDomainName</code> in
the <code>Host</code> header for all health checks except TCP health
checks. This is typically the fully qualified DNS name of the endpoint
on which you want Route 53 to perform health checks.</p>
<p>When Route 53 checks the health of an endpoint, here is how it
constructs the <code>Host</code> header:</p>
<ul>
<li><p>If you specify a value of <code>80</code> for <code>Port</code>
and <code>HTTP</code> or <code>HTTP_STR_MATCH</code> for
<code>Type</code>, Route 53 passes the value of
<code>FullyQualifiedDomainName</code> to the endpoint in the
<code>Host</code> header.</p></li>
<li><p>If you specify a value of <code>443</code> for <code>Port</code>
and <code>HTTPS</code> or <code>HTTPS_STR_MATCH</code> for
<code>Type</code>, Route 53 passes the value of
<code>FullyQualifiedDomainName</code> to the endpoint in the
<code>Host</code> header.</p></li>
<li><p>If you specify another value for <code>Port</code> and any value
except <code>TCP</code> for <code>Type</code>, Route 53 passes
<em>FullyQualifiedDomainName:Port</em> to the endpoint in the
<code>Host</code> header.</p></li>
</ul>
<p>If you don't specify a value for
<code>FullyQualifiedDomainName</code>, Route 53 substitutes the value of
<code>IPAddress</code> in the <code>Host</code> header in each of the
above cases.</p>
<p><strong>If you don't specify a value for</strong>
<code>IPAddress</code>:</p>
<p>If you don't specify a value for <code>IPAddress</code>, Route 53
sends a DNS request to the domain that you specify in
<code>FullyQualifiedDomainName</code> at the interval you specify in
<code>RequestInterval</code>. Using an IPv4 address that is returned by
DNS, Route 53 then checks the health of the endpoint.</p>
<p>If you don't specify a value for <code>IPAddress</code>, Route 53
uses only IPv4 to send health checks to the endpoint. If there's no
resource record set with a type of A for the name that you specify for
<code>FullyQualifiedDomainName</code>, the health check fails with a
"DNS resolution failed" error.</p>
<p>If you want to check the health of weighted, latency, or failover
resource record sets and you choose to specify the endpoint only by
<code>FullyQualifiedDomainName</code>, we recommend that you create a
separate health check for each endpoint. For example, create a health
check for each HTTP server that is serving content for www.example.com.
For the value of <code>FullyQualifiedDomainName</code>, specify the
domain name of the server (such as
<code>us-east-2-www.example.com</code>), not the name of the resource
record sets (www.example.com).</p>
<p>In this configuration, if the value of
<code>FullyQualifiedDomainName</code> matches the name of the resource
record sets and you then associate the health check with those resource
record sets, health check results will be unpredictable.</p>
<p>In addition, if the value of <code>Type</code> is <code>HTTP</code>,
<code>HTTPS</code>, <code>HTTP_STR_MATCH</code>, or
<code>HTTPS_STR_MATCH</code>, Route 53 passes the value of
<code>FullyQualifiedDomainName</code> in the <code>Host</code> header,
as it does when you specify a value for <code>IPAddress</code>. If the
value of <code>Type</code> is <code>TCP</code>, Route 53 doesn't pass a
<code>Host</code> header.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_update_health_check_:_SearchString">SearchString</code></td>
<td><p>If the value of <code>Type</code> is <code>HTTP_STR_MATCH</code>
or <code>HTTPS_STR_MATCH</code>, the string that you want Amazon Route
53 to search for in the response body from the specified resource. If
the string appears in the response body, Route 53 considers the resource
healthy. (You can't change the value of <code>Type</code> when you
update a health check.)</p></td>
</tr>
<tr class="even">
<td><code
id="route53_update_health_check_:_FailureThreshold">FailureThreshold</code></td>
<td><p>The number of consecutive health checks that an endpoint must
pass or fail for Amazon Route 53 to change the current status of the
endpoint from unhealthy to healthy or vice versa. For more information,
see <a
href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How
Amazon Route 53 Determines Whether an Endpoint Is Healthy</a> in the
<em>Amazon Route 53 Developer Guide</em>.</p>
<p>If you don't specify a value for <code>FailureThreshold</code>, the
default value is three health checks.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_update_health_check_:_Inverted">Inverted</code></td>
<td><p>Specify whether you want Amazon Route 53 to invert the status of
a health check, for example, to consider a health check unhealthy when
it otherwise would be considered healthy.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_update_health_check_:_Disabled">Disabled</code></td>
<td><p>Stops Route 53 from performing health checks. When you disable a
health check, here's what happens:</p>
<ul>
<li><p><strong>Health checks that check the health of
endpoints:</strong> Route 53 stops submitting requests to your
application, server, or other resource.</p></li>
<li><p><strong>Calculated health checks:</strong> Route 53 stops
aggregating the status of the referenced health checks.</p></li>
<li><p><strong>Health checks that monitor CloudWatch alarms:</strong>
Route 53 stops monitoring the corresponding CloudWatch metrics.</p></li>
</ul>
<p>After you disable a health check, Route 53 considers the status of
the health check to always be healthy. If you configured DNS failover,
Route 53 continues to route traffic to the corresponding resources. If
you want to stop routing traffic to a resource, change the value of <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-Inverted">Inverted</a>.</p>
<p>Charges for a health check still apply when the health check is
disabled. For more information, see <a
href="https://aws.amazon.com/route53/pricing/">Amazon Route 53
Pricing</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_update_health_check_:_HealthThreshold">HealthThreshold</code></td>
<td><p>The number of child health checks that are associated with a
<code>CALCULATED</code> health that Amazon Route 53 must consider
healthy for the <code>CALCULATED</code> health check to be considered
healthy. To specify the child health checks that you want to associate
with a <code>CALCULATED</code> health check, use the
<code>ChildHealthChecks</code> and <code>ChildHealthCheck</code>
elements.</p>
<p>Note the following:</p>
<ul>
<li><p>If you specify a number greater than the number of child health
checks, Route 53 always considers this health check to be
unhealthy.</p></li>
<li><p>If you specify <code>0</code>, Route 53 always considers this
health check to be healthy.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53_update_health_check_:_ChildHealthChecks">ChildHealthChecks</code></td>
<td><p>A complex type that contains one <code>ChildHealthCheck</code>
element for each health check that you want to associate with a
<code>CALCULATED</code> health check.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_update_health_check_:_EnableSNI">EnableSNI</code></td>
<td><p>Specify whether you want Amazon Route 53 to send the value of
<code>FullyQualifiedDomainName</code> to the endpoint in the
<code>client_hello</code> message during <code>TLS</code> negotiation.
This allows the endpoint to respond to <code>HTTPS</code> health check
requests with the applicable SSL/TLS certificate.</p>
<p>Some endpoints require that HTTPS requests include the host name in
the <code>client_hello</code> message. If you don't enable SNI, the
status of the health check will be SSL alert
<code>handshake_failure</code>. A health check can also have that status
for other reasons. If SNI is enabled and you're still getting the error,
check the SSL/TLS configuration on your endpoint and confirm that your
certificate is valid.</p>
<p>The SSL/TLS certificate on your endpoint includes a domain name in
the <code style="white-space: pre;">⁠Common Name⁠</code> field and
possibly several more in the <code
style="white-space: pre;">⁠Subject Alternative Names⁠</code> field. One of
the domain names in the certificate should match the value that you
specify for <code>FullyQualifiedDomainName</code>. If the endpoint
responds to the <code>client_hello</code> message with a certificate
that does not include the domain name that you specified in
<code>FullyQualifiedDomainName</code>, a health checker will retry the
handshake. In the second attempt, the health checker will omit
<code>FullyQualifiedDomainName</code> from the <code>client_hello</code>
message.</p></td>
</tr>
<tr class="even">
<td><code id="route53_update_health_check_:_Regions">Regions</code></td>
<td><p>A complex type that contains one <code>Region</code> element for
each region that you want Amazon Route 53 health checkers to check the
specified endpoint from.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_update_health_check_:_AlarmIdentifier">AlarmIdentifier</code></td>
<td><p>A complex type that identifies the CloudWatch alarm that you want
Amazon Route 53 health checkers to use to determine whether the
specified health check is healthy.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_update_health_check_:_InsufficientDataHealthStatus">InsufficientDataHealthStatus</code></td>
<td><p>When CloudWatch has insufficient data about the metric to
determine the alarm state, the status that you want Amazon Route 53 to
assign to the health check:</p>
<ul>
<li><p><code>Healthy</code>: Route 53 considers the health check to be
healthy.</p></li>
<li><p><code>Unhealthy</code>: Route 53 considers the health check to be
unhealthy.</p></li>
<li><p><code>LastKnownStatus</code>: By default, Route 53 uses the
status of the health check from the last time CloudWatch had sufficient
data to determine the alarm state. For new health checks that have no
last known status, the status for the health check is healthy.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="route53_update_health_check_:_ResetElements">ResetElements</code></td>
<td><p>A complex type that contains one
<code>ResettableElementName</code> element for each element that you
want to reset to the default value. Valid values for
<code>ResettableElementName</code> include the following:</p>
<ul>
<li><p><code>ChildHealthChecks</code>: Amazon Route 53 resets <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-ChildHealthChecks">ChildHealthChecks</a>
to null.</p></li>
<li><p><code>FullyQualifiedDomainName</code>: Route 53 resets <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_UpdateHealthCheck.html#Route53-UpdateHealthCheck-request-FullyQualifiedDomainName">FullyQualifiedDomainName</a>.
to null.</p></li>
<li><p><code>Regions</code>: Route 53 resets the <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions">Regions</a>
list to the default set of regions.</p></li>
<li><p><code>ResourcePath</code>: Route 53 resets <a
href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-ResourcePath">ResourcePath</a>
to null.</p></li>
</ul></td>
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

    svc$update_health_check(
      HealthCheckId = "string",
      HealthCheckVersion = 123,
      IPAddress = "string",
      Port = 123,
      ResourcePath = "string",
      FullyQualifiedDomainName = "string",
      SearchString = "string",
      FailureThreshold = 123,
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
      ResetElements = list(
        "FullyQualifiedDomainName"|"Regions"|"ResourcePath"|"ChildHealthChecks"
      )
    )
