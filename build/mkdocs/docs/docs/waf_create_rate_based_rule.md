<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_create_rate_based_rule</td>
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

Creates a RateBasedRule. The `RateBasedRule` contains a `RateLimit`,
which specifies the maximum number of requests that AWS WAF allows from
a specified IP address in a five-minute period. The `RateBasedRule` also
contains the `IPSet` objects, `ByteMatchSet` objects, and other
predicates that identify the requests that you want to count or block if
these requests exceed the `RateLimit`.

If you add more than one predicate to a `RateBasedRule`, a request not
only must exceed the `RateLimit`, but it also must match all the
conditions to be counted or blocked. For example, suppose you add the
following to a `RateBasedRule`:

-   An `IPSet` that matches the IP address `⁠192.0.2.44/32⁠`

-   A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header

Further, you specify a `RateLimit` of 1,000.

You then add the `RateBasedRule` to a `WebACL` and specify that you want
to block requests that meet the conditions in the rule. For a request to
be blocked, it must come from the IP address 192.0.2.44 *and* the
`User-Agent` header in the request must contain the value `BadBot`.
Further, requests that match these two conditions must be received at a
rate of more than 1,000 requests every five minutes. If both conditions
are met and the rate is exceeded, AWS WAF blocks the requests. If the
rate drops below 1,000 for a five-minute period, AWS WAF no longer
blocks the requests.

As a second example, suppose you want to limit requests to a particular
page on your site. To do this, you could add the following to a
`RateBasedRule`:

-   A `ByteMatchSet` with `FieldToMatch` of `URI`

-   A `PositionalConstraint` of `STARTS_WITH`

-   A `TargetString` of `login`

Further, you specify a `RateLimit` of 1,000.

By adding this `RateBasedRule` to a `WebACL`, you could limit requests
to your login page without affecting the rest of your site.

To create and configure a `RateBasedRule`, perform the following steps:

1.  Create and update the predicates that you want to include in the
    rule. For more information, see `create_byte_match_set`,
    `create_ip_set`, and `create_sql_injection_match_set`.

2.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of a `create_rule` request.

3.  Submit a `create_rate_based_rule` request.

4.  Use `get_change_token` to get the change token that you provide in
    the `ChangeToken` parameter of an `update_rule` request.

5.  Submit an `update_rate_based_rule` request to specify the predicates
    that you want to include in the rule.

6.  Create and update a `WebACL` that contains the `RateBasedRule`. For
    more information, see `create_web_acl`.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    waf_create_rate_based_rule(Name, MetricName, RateKey, RateLimit,
      ChangeToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_create_rate_based_rule_:_Name">Name</code></td>
<td><p>[required] A friendly name or description of the RateBasedRule.
You can't change the name of a <code>RateBasedRule</code> after you
create it.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_create_rate_based_rule_:_MetricName">MetricName</code></td>
<td><p>[required] A friendly name or description for the metrics for
this <code>RateBasedRule</code>. The name can contain only alphanumeric
characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length
one. It can't contain whitespace or metric names reserved for AWS WAF,
including "All" and "Default_Action." You can't change the name of the
metric after you create the <code>RateBasedRule</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="waf_create_rate_based_rule_:_RateKey">RateKey</code></td>
<td><p>[required] The field that AWS WAF uses to determine if requests
are likely arriving from a single source and thus subject to rate
monitoring. The only valid value for <code>RateKey</code> is
<code>IP</code>. <code>IP</code> indicates that requests that arrive
from the same IP address are subject to the <code>RateLimit</code> that
is specified in the <code>RateBasedRule</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_create_rate_based_rule_:_RateLimit">RateLimit</code></td>
<td><p>[required] The maximum number of requests, which have an
identical value in the field that is specified by <code>RateKey</code>,
allowed in a five-minute period. If the number of requests exceeds the
<code>RateLimit</code> and the other predicates specified in the rule
are also met, AWS WAF triggers the action that is specified for this
rule.</p></td>
</tr>
<tr class="odd">
<td><code
id="waf_create_rate_based_rule_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The <code>ChangeToken</code> that you used to submit
the <code>create_rate_based_rule</code> request. You can also use this
value to query the status of the request. For more information, see
<code>get_change_token_status</code>.</p></td>
</tr>
<tr class="even">
<td><code id="waf_create_rate_based_rule_:_Tags">Tags</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Rule = list(
        RuleId = "string",
        Name = "string",
        MetricName = "string",
        MatchPredicates = list(
          list(
            Negated = TRUE|FALSE,
            Type = "IPMatch"|"ByteMatch"|"SqlInjectionMatch"|"GeoMatch"|"SizeConstraint"|"XssMatch"|"RegexMatch",
            DataId = "string"
          )
        ),
        RateKey = "IP",
        RateLimit = 123
      ),
      ChangeToken = "string"
    )

### Request syntax

    svc$create_rate_based_rule(
      Name = "string",
      MetricName = "string",
      RateKey = "IP",
      RateLimit = 123,
      ChangeToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
