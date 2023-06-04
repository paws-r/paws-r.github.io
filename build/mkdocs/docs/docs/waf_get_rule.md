<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>waf_get_rule</td>
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

Returns the Rule that is specified by the `RuleId` that you included in
the `get_rule` request.

### Usage

    waf_get_rule(RuleId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="waf_get_rule_:_RuleId">RuleId</code></td>
<td><p>[required] The <code>RuleId</code> of the Rule that you want to
get. <code>RuleId</code> is returned by <code>create_rule</code> and by
<code>list_rules</code>.</p></td>
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
        Predicates = list(
          list(
            Negated = TRUE|FALSE,
            Type = "IPMatch"|"ByteMatch"|"SqlInjectionMatch"|"GeoMatch"|"SizeConstraint"|"XssMatch"|"RegexMatch",
            DataId = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_rule(
      RuleId = "string"
    )

### Examples

    ## Not run: 
    # The following example returns the details of a rule with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    svc$get_rule(
      RuleId = "example1ds3t-46da-4fdb-b8d5-abc321j569j5"
    )

    ## End(Not run)
