<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_create_rule_group</td>
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

Creates a `RuleGroup`. A rule group is a collection of predefined rules
that you add to a web ACL. You use `update_rule_group` to add rules to
the rule group.

Rule groups are subject to the following limits:

-   Three rule groups per account. You can request an increase to this
    limit by contacting customer support.

-   One rule group per web ACL.

-   Ten rules per rule group.

For more information about how to use the AWS WAF API to allow or block
HTTP requests, see the [AWS WAF Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    waf_create_rule_group(Name, MetricName, ChangeToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_create_rule_group_:_Name">Name</code></td>
<td><p>[required] A friendly name or description of the RuleGroup. You
can't change <code>Name</code> after you create a
<code>RuleGroup</code>.</p></td>
</tr>
<tr class="even">
<td><code id="waf_create_rule_group_:_MetricName">MetricName</code></td>
<td><p>[required] A friendly name or description for the metrics for
this <code>RuleGroup</code>. The name can contain only alphanumeric
characters (A-Z, a-z, 0-9), with maximum length 128 and minimum length
one. It can't contain whitespace or metric names reserved for AWS WAF,
including "All" and "Default_Action." You can't change the name of the
metric after you create the <code>RuleGroup</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="waf_create_rule_group_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
<tr class="even">
<td><code id="waf_create_rule_group_:_Tags">Tags</code></td>
<td></td>
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
      ),
      ChangeToken = "string"
    )

### Request syntax

    svc$create_rule_group(
      Name = "string",
      MetricName = "string",
      ChangeToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
