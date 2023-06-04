<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_get_rate_based_rule_managed_keys</td>
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

Returns an array of IP addresses currently being blocked by the
RateBasedRule that is specified by the `RuleId`. The maximum number of
managed keys that will be blocked is 10,000. If more than 10,000
addresses exceed the rate limit, the 10,000 addresses with the highest
rates will be blocked.

### Usage

    waf_get_rate_based_rule_managed_keys(RuleId, NextMarker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_get_rate_based_rule_managed_keys_:_RuleId">RuleId</code></td>
<td><p>[required] The <code>RuleId</code> of the RateBasedRule for which
you want to get a list of <code>ManagedKeys</code>. <code>RuleId</code>
is returned by <code>create_rate_based_rule</code> and by
<code>list_rate_based_rules</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="waf_get_rate_based_rule_managed_keys_:_NextMarker">NextMarker</code></td>
<td><p>A null value and not currently used. Do not include this in your
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ManagedKeys = list(
        "string"
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$get_rate_based_rule_managed_keys(
      RuleId = "string",
      NextMarker = "string"
    )
