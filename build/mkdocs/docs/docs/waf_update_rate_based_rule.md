<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_update_rate_based_rule</td>
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

Inserts or deletes Predicate objects in a rule and updates the
`RateLimit` in the rule.

Each `Predicate` object identifies a predicate, such as a ByteMatchSet
or an IPSet, that specifies the web requests that you want to block or
count. The `RateLimit` specifies the number of requests every five
minutes that triggers the rule.

If you add more than one predicate to a `RateBasedRule`, a request must
match all the predicates and exceed the `RateLimit` to be counted or
blocked. For example, suppose you add the following to a
`RateBasedRule`:

-   An `IPSet` that matches the IP address `⁠192.0.2.44/32⁠`

-   A `ByteMatchSet` that matches `BadBot` in the `User-Agent` header

Further, you specify a `RateLimit` of 1,000.

You then add the `RateBasedRule` to a `WebACL` and specify that you want
to block requests that satisfy the rule. For a request to be blocked, it
must come from the IP address 192.0.2.44 *and* the `User-Agent` header
in the request must contain the value `BadBot`. Further, requests that
match these two conditions much be received at a rate of more than 1,000
every five minutes. If the rate drops below this limit, AWS WAF no
longer blocks the requests.

As a second example, suppose you want to limit requests to a particular
page on your site. To do this, you could add the following to a
`RateBasedRule`:

-   A `ByteMatchSet` with `FieldToMatch` of `URI`

-   A `PositionalConstraint` of `STARTS_WITH`

-   A `TargetString` of `login`

Further, you specify a `RateLimit` of 1,000.

By adding this `RateBasedRule` to a `WebACL`, you could limit requests
to your login page without affecting the rest of your site.

### Usage

    waf_update_rate_based_rule(RuleId, ChangeToken, Updates, RateLimit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_update_rate_based_rule_:_RuleId">RuleId</code></td>
<td><p>[required] The <code>RuleId</code> of the
<code>RateBasedRule</code> that you want to update. <code>RuleId</code>
is returned by <code>create_rate_based_rule</code> and by
<code>list_rate_based_rules</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_update_rate_based_rule_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="waf_update_rate_based_rule_:_Updates">Updates</code></td>
<td><p>[required] An array of <code>RuleUpdate</code> objects that you
want to insert into or delete from a RateBasedRule.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_update_rate_based_rule_:_RateLimit">RateLimit</code></td>
<td><p>[required] The maximum number of requests, which have an
identical value in the field specified by the <code>RateKey</code>,
allowed in a five-minute period. If the number of requests exceeds the
<code>RateLimit</code> and the other predicates specified in the rule
are also met, AWS WAF triggers the action that is specified for this
rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeToken = "string"
    )

### Request syntax

    svc$update_rate_based_rule(
      RuleId = "string",
      ChangeToken = "string",
      Updates = list(
        list(
          Action = "INSERT"|"DELETE",
          Predicate = list(
            Negated = TRUE|FALSE,
            Type = "IPMatch"|"ByteMatch"|"SqlInjectionMatch"|"GeoMatch"|"SizeConstraint"|"XssMatch"|"RegexMatch",
            DataId = "string"
          )
        )
      ),
      RateLimit = 123
    )
