<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_list_rules</td>
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

Returns an array of RuleSummary objects.

### Usage

    wafregional_list_rules(NextMarker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_list_rules_:_NextMarker">NextMarker</code></td>
<td><p>If you specify a value for <code>Limit</code> and you have more
<code>Rules</code> than the value of <code>Limit</code>, AWS WAF returns
a <code>NextMarker</code> value in the response that allows you to list
another group of <code>Rules</code>. For the second and subsequent
<code>list_rules</code> requests, specify the value of
<code>NextMarker</code> from the previous response to get information
about another batch of <code>Rules</code>.</p></td>
</tr>
<tr class="even">
<td><code id="wafregional_list_rules_:_Limit">Limit</code></td>
<td><p>Specifies the number of <code>Rules</code> that you want AWS WAF
to return for this request. If you have more <code>Rules</code> than the
number that you specify for <code>Limit</code>, the response includes a
<code>NextMarker</code> value that you can use to get another batch of
<code>Rules</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextMarker = "string",
      Rules = list(
        list(
          RuleId = "string",
          Name = "string"
        )
      )
    )

### Request syntax

    svc$list_rules(
      NextMarker = "string",
      Limit = 123
    )

### Examples

    ## Not run: 
    # The following example returns an array of up to 100 rules.
    svc$list_rules(
      Limit = 100L
    )

    ## End(Not run)
