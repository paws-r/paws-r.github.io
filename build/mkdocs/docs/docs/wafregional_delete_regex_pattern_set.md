<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafregional_delete_regex_pattern_set</td>
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

Permanently deletes a RegexPatternSet. You can't delete a
`RegexPatternSet` if it's still used in any `RegexMatchSet` or if the
`RegexPatternSet` is not empty.

### Usage

    wafregional_delete_regex_pattern_set(RegexPatternSetId, ChangeToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafregional_delete_regex_pattern_set_:_RegexPatternSetId">RegexPatternSetId</code></td>
<td><p>[required] The <code>RegexPatternSetId</code> of the
RegexPatternSet that you want to delete. <code>RegexPatternSetId</code>
is returned by <code>create_regex_pattern_set</code> and by
<code>list_regex_pattern_sets</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="wafregional_delete_regex_pattern_set_:_ChangeToken">ChangeToken</code></td>
<td><p>[required] The value returned by the most recent call to
<code>get_change_token</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeToken = "string"
    )

### Request syntax

    svc$delete_regex_pattern_set(
      RegexPatternSetId = "string",
      ChangeToken = "string"
    )
