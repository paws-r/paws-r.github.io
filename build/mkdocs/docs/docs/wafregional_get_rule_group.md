<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_get_rule_group</td>
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

Returns the RuleGroup that is specified by the `RuleGroupId` that you
included in the `get_rule_group` request.

To view the rules in a rule group, use
`list_activated_rules_in_rule_group`.

### Usage

    wafregional_get_rule_group(RuleGroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_get_rule_group_:_RuleGroupId">RuleGroupId</code></td>
<td><p>[required] The <code>RuleGroupId</code> of the RuleGroup that you
want to get. <code>RuleGroupId</code> is returned by
<code>create_rule_group</code> and by
<code>list_rule_groups</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RuleGroup = list(
        RuleGroupId = "string",
        Name = "string",
        MetricName = "string"
      )
    )

### Request syntax

    svc$get_rule_group(
      RuleGroupId = "string"
    )
