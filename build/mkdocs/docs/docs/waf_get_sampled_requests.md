<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_get_sampled_requests</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This is AWS WAF Classic documentation

### Description

This is **AWS WAF Classic** documentation. For more information, see
[AWS WAF
Classic](https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html)
in the developer guide.

**For the latest version of AWS WAF**, use the AWS WAFV2 API and see the
[AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).
With the latest version, AWS WAF has a single set of endpoints for
regional and global use.

Gets detailed information about a specified number of requests–a
sample–that AWS WAF randomly selects from among the first 5,000 requests
that your AWS resource received during a time range that you choose. You
can specify a sample size of up to 500 requests, and you can specify any
time range in the previous three hours.

`get_sampled_requests` returns a time range, which is usually the time
range that you specified. However, if your resource (such as a
CloudFront distribution) received 5,000 requests before the specified
time range elapsed, `get_sampled_requests` returns an updated time
range. This new time range indicates the actual period during which AWS
WAF selected the requests in the sample.

### Usage

    waf_get_sampled_requests(WebAclId, RuleId, TimeWindow, MaxItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_get_sampled_requests_:_WebAclId">WebAclId</code></td>
<td><p>[required] The <code>WebACLId</code> of the <code>WebACL</code>
for which you want <code>get_sampled_requests</code> to return a sample
of requests.</p></td>
</tr>
<tr class="even">
<td><code id="waf_get_sampled_requests_:_RuleId">RuleId</code></td>
<td><p>[required] <code>RuleId</code> is one of three values:</p>
<ul>
<li><p>The <code>RuleId</code> of the <code>Rule</code> or the
<code>RuleGroupId</code> of the <code>RuleGroup</code> for which you
want <code>get_sampled_requests</code> to return a sample of
requests.</p></li>
<li><p><code>Default_Action</code>, which causes
<code>get_sampled_requests</code> to return a sample of the requests
that didn't match any of the rules in the specified
<code>WebACL</code>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="waf_get_sampled_requests_:_TimeWindow">TimeWindow</code></td>
<td><p>[required] The start date and time and the end date and time of
the range for which you want <code>get_sampled_requests</code> to return
a sample of requests. You must specify the times in Coordinated
Universal Time (UTC) format. UTC format includes the special designator,
<code>Z</code>. For example, <code>"2016-09-27T14:50Z"</code>. You can
specify any time range in the previous three hours.</p></td>
</tr>
<tr class="even">
<td><code id="waf_get_sampled_requests_:_MaxItems">MaxItems</code></td>
<td><p>[required] The number of requests that you want AWS WAF to return
from among the first 5,000 requests that your AWS resource received
during the time range. If your resource received fewer requests than the
value of <code>MaxItems</code>, <code>get_sampled_requests</code>
returns information about all of them.</p></td>
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
          RuleWithinRuleGroup = "string"
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
      WebAclId = "string",
      RuleId = "string",
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

### Examples

    ## Not run: 
    # The following example returns detailed information about 100 requests
    # --a sample-- that AWS WAF randomly selects from among the first 5,000
    # requests that your AWS resource received between the time period
    # 2016-09-27T15:50Z to 2016-09-27T15:50Z.
    svc$get_sampled_requests(
      MaxItems = 100L,
      RuleId = "WAFRule-1-Example",
      TimeWindow = list(
        EndTime = "2016-09-27T15:50Z",
        StartTime = "2016-09-27T15:50Z"
      ),
      WebAclId = "createwebacl-1472061481310"
    )

    ## End(Not run)
