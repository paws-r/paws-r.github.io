<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_get_sampled_requests</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets detailed information about a specified number of requests–a sample–that WAF randomly selects from among the first 5,000 requests that your Amazon Web Services resource received during a time range that you choose

### Description

Gets detailed information about a specified number of requests–a
sample–that WAF randomly selects from among the first 5,000 requests
that your Amazon Web Services resource received during a time range that
you choose. You can specify a sample size of up to 500 requests, and you
can specify any time range in the previous three hours.

`get_sampled_requests` returns a time range, which is usually the time
range that you specified. However, if your resource (such as a
CloudFront distribution) received 5,000 requests before the specified
time range elapsed, `get_sampled_requests` returns an updated time
range. This new time range indicates the actual period during which WAF
selected the requests in the sample.

### Usage

    wafv2_get_sampled_requests(WebAclArn, RuleMetricName, Scope, TimeWindow,
      MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_get_sampled_requests_:_WebAclArn">WebAclArn</code></td>
<td><p>[required] The Amazon resource name (ARN) of the
<code>WebACL</code> for which you want a sample of requests.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_get_sampled_requests_:_RuleMetricName">RuleMetricName</code></td>
<td><p>[required] The metric name assigned to the <code>Rule</code> or
<code>RuleGroup</code> dimension for which you want a sample of
requests.</p></td>
</tr>
<tr class="odd">
<td><code id="wafv2_get_sampled_requests_:_Scope">Scope</code></td>
<td><p>[required] Specifies whether this is for an Amazon CloudFront
distribution or for a regional application. A regional application can
be an Application Load Balancer (ALB), an Amazon API Gateway REST API,
an AppSync GraphQL API, an Amazon Cognito user pool, an App Runner
service, or an Amazon Web Services Verified Access instance.</p>
<p>To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:</p>
<ul>
<li><p>CLI - Specify the Region when you use the CloudFront scope:
<code>--scope=CLOUDFRONT --region=us-east-1</code>.</p></li>
<li><p>API and SDKs - For all calls, use the Region endpoint
us-east-1.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="wafv2_get_sampled_requests_:_TimeWindow">TimeWindow</code></td>
<td><p>[required] The start date and time and the end date and time of
the range for which you want <code>get_sampled_requests</code> to return
a sample of requests. You must specify the times in Coordinated
Universal Time (UTC) format. UTC format includes the special designator,
<code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can
specify any time range in the previous three hours. If you specify a
start time that's earlier than three hours ago, WAF sets it to three
hours ago.</p></td>
</tr>
<tr class="odd">
<td><code
id="wafv2_get_sampled_requests_:_MaxItems">MaxItems</code></td>
<td><p>[required] The number of requests that you want WAF to return
from among the first 5,000 requests that your Amazon Web Services
resource received during the time range. If your resource received fewer
requests than the value of <code>MaxItems</code>,
<code>get_sampled_requests</code> returns information about all of
them.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SampledRequests = list(
        list(
          Request = list(
            ClientIP = "string",
            Country = "string",
            URI = "string",
            Method = "string",
            HTTPVersion = "string",
            Headers = list(
              list(
                Name = "string",
                Value = "string"
              )
            )
          ),
          Weight = 123,
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          Action = "string",
          RuleNameWithinRuleGroup = "string",
          RequestHeadersInserted = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          ResponseCodeSent = 123,
          Labels = list(
            list(
              Name = "string"
            )
          ),
          CaptchaResponse = list(
            ResponseCode = 123,
            SolveTimestamp = 123,
            FailureReason = "TOKEN_MISSING"|"TOKEN_EXPIRED"|"TOKEN_INVALID"|"TOKEN_DOMAIN_MISMATCH"
          ),
          ChallengeResponse = list(
            ResponseCode = 123,
            SolveTimestamp = 123,
            FailureReason = "TOKEN_MISSING"|"TOKEN_EXPIRED"|"TOKEN_INVALID"|"TOKEN_DOMAIN_MISMATCH"
          ),
          OverriddenAction = "string"
        )
      ),
      PopulationSize = 123,
      TimeWindow = list(
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_sampled_requests(
      WebAclArn = "string",
      RuleMetricName = "string",
      Scope = "CLOUDFRONT"|"REGIONAL",
      TimeWindow = list(
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      MaxItems = 123
    )
