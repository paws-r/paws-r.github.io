<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_list_subscribed_rule_groups</td>
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

Returns an array of RuleGroup objects that you are subscribed to.

### Usage

    waf_list_subscribed_rule_groups(NextMarker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="waf_list_subscribed_rule_groups_:_NextMarker">NextMarker</code></td>
<td><p>If you specify a value for <code>Limit</code> and you have more
<code>ByteMatchSets</code>subscribed rule groups than the value of
<code>Limit</code>, AWS WAF returns a <code>NextMarker</code> value in
the response that allows you to list another group of subscribed rule
groups. For the second and subsequent
<code>ListSubscribedRuleGroupsRequest</code> requests, specify the value
of <code>NextMarker</code> from the previous response to get information
about another batch of subscribed rule groups.</p></td>
</tr>
<tr class="even">
<td><code id="waf_list_subscribed_rule_groups_:_Limit">Limit</code></td>
<td><p>Specifies the number of subscribed rule groups that you want AWS
WAF to return for this request. If you have more objects than the number
you specify for <code>Limit</code>, the response includes a
<code>NextMarker</code> value that you can use to get another batch of
objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      RuleGroups = list(
        list(
          RuleGroupId = "string",
          Name = "string",
          MetricName = "string"
        )
      )
    )

### Request syntax

    svc$list_subscribed_rule_groups(
      NextMarker = "string",
      Limit = 123
    )
